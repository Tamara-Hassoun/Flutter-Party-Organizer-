import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
options.headers["Authorization"]="4|15MPKFXmfL38ElY7ReQIqs9Ch4JDUnSfdfWdyHVzb6ea3ea5";
    super.onRequest(options, handler);
  }
}