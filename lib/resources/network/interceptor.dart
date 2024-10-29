part of 'network.dart';

class ErrorInterceptors extends Interceptor {
  final Dio dio;

  ErrorInterceptors(this.dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw TimeOutException(requestOptions: err.requestOptions);
      case DioExceptionType.badCertificate:
        throw BadCerException(requestOptions: err.requestOptions);
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(requestOptions: err.requestOptions);
          case 401:
            throw UnauthorizedException(requestOptions: err.requestOptions);
          case 404:
            throw NotfoundException(requestOptions: err.requestOptions);
          case 409:
            throw ConflicException(requestOptions: err.requestOptions);
          case 500:
            throw InternalServerErrorException(requestOptions: err.requestOptions);
        }
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.connectionError:
        throw ConnectionErrorException(requestOptions: err.requestOptions);
      case DioExceptionType.unknown:
        throw NoInternetConnectionException(requestOptions: err.requestOptions);
    }

    return handler.next(err);
  }
}

class TimeOutException extends DioException {
  TimeOutException({required super.requestOptions});

  @override
  String toString() {
    return "Connection time out";
  }
}

class BadCerException extends DioException {
  BadCerException({required super.requestOptions});

  @override
  String toString() {
    return "Bad certificate connection";
  }
}

class BadRequestException extends DioException {
  BadRequestException({required super.requestOptions});

  @override
  String toString() {
    return "Invalid request";
  }
}

class UnauthorizedException extends DioException {
  UnauthorizedException({required super.requestOptions});

  @override
  String toString() {
    return "Unauthorized! Access denied";
  }
}

class NotfoundException extends DioException {
  NotfoundException({required super.requestOptions});

  @override
  String toString() {
    return "Not found";
  }
}

class ConflicException extends DioException {
  ConflicException({required super.requestOptions});

  @override
  String toString() {
    return "Conflic occured";
  }
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException({required super.requestOptions});

  @override
  String toString() {
    return "Server error occured";
  }
}

class ConnectionErrorException extends DioException {
  ConnectionErrorException({required super.requestOptions});

  @override
  String toString() {
    return "Connection error";
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException({required super.requestOptions});

  @override
  String toString() {
    return "No internet connection";
  }
}

class Logging extends Interceptor {
  final Dio dio;

  Logging(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint("REQUEST[${options.method}] => PATH: ${options.path}");
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint("RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}");
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint("ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
    debugPrint(err.message);
    return super.onError(err, handler);
  }
}
