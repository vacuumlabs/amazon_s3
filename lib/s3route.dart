library amazon_s3.s3route;

import 'package:clean_router/common.dart';

class S3Route extends Route {
  S3Route(host, bucket, path) : super('$host/$bucket/$path');
}
