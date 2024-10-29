import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:votee_mobile_coding_interview_project/resources/models/network/network_response_model.dart';
import 'package:votee_mobile_coding_interview_project/resources/network/api_service.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_constant.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_enum.dart';

part 'interceptor.dart';

class NetworkApi {
  final dio = createDio();

  NetworkApi._internal();
  static final _instance = NetworkApi._internal();
  factory NetworkApi() => _instance;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
        baseUrl: ApiService.baseUrl,
        receiveTimeout: AppConstant.networkReceiveTimeout,
        connectTimeout: AppConstant.networkConnectTimeout,
        sendTimeout: AppConstant.networkSendTimeout));

    dio.interceptors.addAll({ErrorInterceptors(dio)});
    dio.interceptors.addAll({Logging(dio)});

    return dio;
  }

  Future<NetworkResponseModel?> networkCall({
    required String apiPath,
    Map<String, dynamic>? querryParams,
    Map<String, dynamic>? body,
    required NetworkRequestType requestType,
    CancelToken? cancelToken,
    Function(int, int)? onCallProgress,
  }) async {
    Response? response;
    Options options = Options(headers: AppConstant.headers);

    String apiPathFull = ApiService.baseUrl + apiPath;

    try {
      switch (requestType) {
        case NetworkRequestType.get:
          response = await dio.get(
            apiPathFull,
            queryParameters: querryParams,
            options: options,
            data: body,
            cancelToken: cancelToken,
            onReceiveProgress: onCallProgress,
          );
          break;
        case NetworkRequestType.post:
          response = await dio.post(
            apiPathFull,
            queryParameters: querryParams,
            options: options,
            data: body,
            cancelToken: cancelToken,
            onReceiveProgress: onCallProgress,
          );
          break;
        case NetworkRequestType.put:
          response = await dio.put(
            apiPathFull,
            queryParameters: querryParams,
            options: options,
            data: body,
            cancelToken: cancelToken,
            onReceiveProgress: onCallProgress,
          );
          break;
        case NetworkRequestType.delete:
          response = await dio.delete(
            apiPathFull,
            queryParameters: querryParams,
            options: options,
            data: body,
            cancelToken: cancelToken,
          );
          break;
        case NetworkRequestType.patch:
          response = await dio.patch(
            apiPathFull,
            queryParameters: querryParams,
            options: options,
            data: body,
            cancelToken: cancelToken,
            onReceiveProgress: onCallProgress,
          );
          break;
      }

      if (response.data is List) {
        Map<String, dynamic> responseList = {"data": response.data};
        return NetworkResponseModel.success(responseList);
      }

      return NetworkResponseModel.success(response.data);
    } on DioException catch (error) {
      return NetworkResponseModel.error(error.message.toString());
    } catch (error) {
      return NetworkResponseModel.error(error.toString());
    } finally {}
  }
}
