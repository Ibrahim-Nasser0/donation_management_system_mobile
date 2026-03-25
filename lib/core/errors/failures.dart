import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "Connection Timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "Send Timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive Timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: "Bad Certificate with ApiServer");
      case DioExceptionType.badResponse:
        {
          return ServerFailure.fromResponse(
            dioException.response!.statusCode!,
            dioException.response!.data,
          );
        }
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Request to ApiServer was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: "Connection Error with ApiServer");
      case DioExceptionType.unknown:
        {
          if (dioException.message != null && dioException.message!.contains('SocketException')) {
            return ServerFailure(errMessage: "No Internet Connection");
          }
          return ServerFailure(
            errMessage: "Unexpected error , Please try again!",
          );
        }
      // ignore: unreachable_switch_default
      default:
        return ServerFailure(errMessage: "Oops something went wrong");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        errMessage: "Your request not found, Please try later!",
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: "Internal Server error, Please try later!",
      );
    } else {
      return ServerFailure( 
        errMessage:
            "Oops something went wrong, Please try later! Status Code : $statusCode",
      );
    }
  }
}
