import 'package:dio/dio.dart';
import 'package:responsive/core/errors/errorModel.dart';

class ServerException implements Exception{
  final ErrorModel errorModel;

  ServerException({required this.errorModel});
}

void handlrException(DioError e) {
    switch(e.type){
      case DioErrorType.connectTimeout:
        throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioErrorType.sendTimeout:
        throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioErrorType.receiveTimeout:
        throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioErrorType.cancel:
        throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioErrorType.other:
        throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
        case DioErrorType.response:
        switch(e.response?.statusCode){
          case 400:
           throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
          case 401:
           throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
          case 403:
           throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
          case 404:
           throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
          case 409:
           throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
          case 422:
           throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
          case 504:
           throw ServerException(errorModel: ErrorModel.fromJson(e.response!.data));
    
        }
    }
  }