// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wordle_guess_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordleGuessModelImpl _$$WordleGuessModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WordleGuessModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WordleGuess.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WordleGuessModelImplToJson(
        _$WordleGuessModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
      'code': instance.code,
    };

_$WordleGuessImpl _$$WordleGuessImplFromJson(Map<String, dynamic> json) =>
    _$WordleGuessImpl(
      slot: (json['slot'] as num?)?.toInt(),
      guess: json['guess'] as String?,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$$WordleGuessImplToJson(_$WordleGuessImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'guess': instance.guess,
      'result': instance.result,
    };
