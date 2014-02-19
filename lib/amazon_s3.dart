
library amazon_S3;

import 'package:crypto/crypto.dart';
import 'dart:convert';
import 'dart:io';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:path/path.dart' as path;
import 'package:logging/logging.dart';


part "src/ext2ContentType.dart";

Logger logger = new Logger('amazon_s3');

class AmazonUploader {
  String _userName;
  String _accessKeyId;
  List<int> _secretAccessKey;
  final _hmacFactory;
  String _host;

  AmazonUploader.config(this._userName, this._accessKeyId, this._secretAccessKey, this._hmacFactory, this._host);

  AmazonUploader(String userName, String accessKeyId, List<int> secretAccessKey, [String host = 's3.amazonaws.com']) :
    this.config(userName, accessKeyId, secretAccessKey, () => new HMAC(new SHA1(), secretAccessKey), host);
  /*
   * subresources: {nameOfSubresource: value} if subresource doesn't have value, then value = ""
   * TODO: request specifies query for canonicalResource
   * */
  String _getAuthorization(String path, String httpVerb, String contentMD5,
                           String contentType, String date, String bucket,
                           {Map<String, String> subresources: const {},
                             Map<String, String> amzHeaders: const {}}){
    String canonicalizedResource = "";
    canonicalizedResource += bucket == "" ? "/" : "/$bucket/$path";
    if (subresources.isNotEmpty) {
      List keyList = subresources.keys.toList();
      keyList.sort();
      canonicalizedResource += "?${keyList[0]}";
      if (subresources[keyList[0]] != "") {
        canonicalizedResource += "=${subresources[keyList[0]]}";
      }
      keyList.removeAt(0);

      keyList.forEach((key) {
        canonicalizedResource += "&$key";
        if (subresources[key] != "") {
          canonicalizedResource += "=${subresources[key]}";
        }
      });

    }
    String canonicalizedAmzHeaders = "";
    if (amzHeaders.isNotEmpty){
      List buf = [];
      List keyList = amzHeaders.keys.toList();
      keyList.forEach((key) {
        String value = amzHeaders[key];
        String canonizedLine = '${key.toLowerCase()}:$value';
        buf.add(canonizedLine);

      });
      buf.sort();
      canonicalizedAmzHeaders = buf.join("\n");
      canonicalizedAmzHeaders += "\n";
    }


    String stringToSign = "$httpVerb\n"+
                          "$contentMD5\n"+
                          "$contentType\n"+
                          "${date}\n"+
                          "$canonicalizedAmzHeaders"+
                          "$canonicalizedResource";
    HMAC hmac = _hmacFactory();
    Utf8Codec codec = new Utf8Codec();
    logger.fine("to sign:\n$stringToSign");
    logger.fine("end of to sign");
    List<int> encodedToSign = codec.encode(stringToSign);
    hmac.add(encodedToSign);
    List<int> signed = hmac.close();
    String signature = CryptoUtils.bytesToBase64(signed);
    String authorization = "AWS $_accessKeyId:$signature";
    return authorization;
  }


  Future upload(String fromFilePath, String toFilePath, String bucket, [bool cache = false]){
    HttpClient client = new HttpClient();
    File fileToUpload = new File(fromFilePath);
    return _createRequest('PUT', toFilePath, bucket, fileToUpload, cache)
        .then((HttpClientResponse response) {
        });

  }

  Future delete(String filePath, String bucket){
    HttpClient client = new HttpClient();
    return _createRequest('DELETE', filePath, bucket)
        .then((HttpClientResponse response) {
        });
  }

  Future _createRequest(String method, String filePath, String bucket, [File content, bool cache = false]){
    HttpClient client = new HttpClient();
    return client.openUrl(method, Uri.parse('$_host/$bucket/$filePath'))
      .then((HttpClientRequest request) {
        DateTime now = new DateTime.now();
        request.headers.date = now;
        String contentType = '';
        Map amzHeaders = {};
        if (content != null) {
          String ext = path.extension(content.path);
          contentType = getContentTypeByExtension(ext.toLowerCase());
          request.headers.add(HttpHeaders.CONTENT_TYPE, contentType);
          request.headers.add(HttpHeaders.CONTENT_LENGTH, content.lengthSync());
          request.headers.add(HttpHeaders.CONNECTION, 'keep-alive');
          request.headers.add(HttpHeaders.CONNECTION, 'keep-alive');
          request.headers.add('x-amz-acl', 'public-read');
          amzHeaders['x-amz-acl'] = 'public-read';
          if (cache) {
            request.headers.add('x-amz-meta-Cache-Control', 'max-age=2592000');
            amzHeaders['x-amz-meta-Cache-Control'] = 'max-age=2592000';
          }
        }
        request.headers.add(HttpHeaders.ACCEPT_ENCODING, 'deflate');
        String nowString = new DateFormat("E, d MMM y HH:mm:ss 'GMT'").format(now.toUtc());
        String authorization = _getAuthorization(filePath, method, '', contentType, nowString, bucket, amzHeaders: amzHeaders);
        request.headers.add(HttpHeaders.AUTHORIZATION, authorization);

        if (content != null) {
          logger.fine("upl: ${content.path}");
          request.add(content.readAsBytesSync());
          logger.fine("done upl: ${content.path}");
        }
        logger.fine('${request.headers}');
        return request.close();
      });

  }
}



