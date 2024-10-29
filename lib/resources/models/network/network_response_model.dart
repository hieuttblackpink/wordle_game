import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_response_model.freezed.dart';

@freezed
class NetworkResponseModel with _$NetworkResponseModel {
  const factory NetworkResponseModel.success(Map<String, dynamic> data) = _Success;
  const factory NetworkResponseModel.error(String message) = _Error;
  const factory NetworkResponseModel.loading(String message) = _Loading;
}
