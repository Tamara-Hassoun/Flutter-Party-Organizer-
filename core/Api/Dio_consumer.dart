import 'package:dio/dio.dart';
import 'package:responsive/core/Api/Api_Interceptors.dart';
import 'package:responsive/core/Api/Api_consumer.dart';
import 'package:responsive/core/Api/End_points.dart';
import 'package:responsive/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer{
  final Dio dio;

  DioConsumer({required this.dio}){
   dio.options.baseUrl = EndPoint.baseUrl;
   dio.interceptors.add(ApiInterceptors());
  }
  @override
  Future delete(String path, {dynamic? data, Map<String, dynamic>? queryParameters,bool isFormData = false})async {
    try {
  final response = await dio.delete(path,data:isFormData ? FormData.fromMap(data) : data,queryParameters: queryParameters);
  return response.data;
} on DioError catch (e) {
  handlrException(e);
}
  }

  

  @override
  Future get(String path, {dynamic? data, Map<String, dynamic>? queryParameters,bool isFormData = false})async {
   try {
  final response = await dio.get(path,queryParameters: queryParameters);
  return response.data;
} on DioError catch (e) {
  handlrException(e);
}
  }

  @override
  Future post(String path, {dynamic? data, Map<String, dynamic>? queryParameters,bool isFormData = false})async {
    try {
  final response = await dio.post(path,data:isFormData ? FormData.fromMap(data) : data,queryParameters: queryParameters);
  return response.data;
} on DioError catch (e) {
  handlrException(e);
}
  }
 

}