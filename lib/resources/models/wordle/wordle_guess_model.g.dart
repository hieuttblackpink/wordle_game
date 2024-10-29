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
    );

Map<String, dynamic> _$$WordleGuessModelImplToJson(
        _$WordleGuessModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
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
