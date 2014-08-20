part of amazon_S3;

/** Recursively uploads provided directory to provided s3 bucket. */
Future uploadDirectory(S3Bucket s3bucket, Directory dir) {
  logger.info('Uploading directory:'
              '\ndirectory path: ${dir.path}'
              '\ns3bucket path: ${s3bucket.getUrl('')}');
  return dir.list(recursive: true).toList()
      .then((fses) => forEachAsync(fses, (FileSystemEntity fse) {
        if (fse is! File) return new Future.value(null);
        File f = fse;
        var relPath = path.relative(f.path, from: dir.path);
        logger.finest('Uploading file ${relPath}.');
        ContentType ct = getContentTypeByExtension(f.path.split('.').last);
        return f.readAsBytes()
            .then((data) => s3bucket.upload(data, relPath, contentType: ct));
      }, maxTasks: 10));
}
