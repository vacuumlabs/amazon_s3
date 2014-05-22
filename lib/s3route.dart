library amazon_s3.s3route;

import 'package:clean_router/common.dart';

class S3Route extends Route {
  /**
   * It would be nice to use url.join from path package here. However, it makes
   * more harm than good, as it may lead to very unexpected results.
   * For example:
   *     url.join('http://google.com', 'a', 'b')  // -> http://google.com/a/b
   *     url.join('http://google.com', 'a', '/b') // -> http://google.com/b
   *     url.join('google.com', 'a', '/b')        // -> /b
   */
  S3Route(host, bucket, path) : super('$host/$bucket/$path');
}
