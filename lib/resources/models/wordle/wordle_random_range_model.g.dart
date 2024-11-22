// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wordle_random_range_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordleRandomRangeModelImpl _$$WordleRandomRangeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WordleRandomRangeModelImpl(
      data: json['data'] == null
          ? null
          : RandomRange.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WordleRandomRangeModelImplToJson(
        _$WordleRandomRangeModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
      'code': instance.code,
    };

_$RandomRangeImpl _$$RandomRangeImplFromJson(Map<String, dynamic> json) =>
    _$RandomRangeImpl(
      minRange: (json['minRange'] as num?)?.toInt(),
      maxRange: (json['maxRange'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RandomRangeImplToJson(_$RandomRangeImpl instance) =>
    <String, dynamic>{
      'minRange': instance.minRange,
      'maxRange': instance.maxRange,
    };
