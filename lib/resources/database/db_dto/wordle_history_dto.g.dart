// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wordle_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordleHistoryImpl _$$WordleHistoryImplFromJson(Map<String, dynamic> json) =>
    _$WordleHistoryImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      wordGuess: json['wordGuess'] as String,
      wrongGuessTimes: (json['wrongGuessTimes'] as num).toInt(),
      gameDate: json['gameDate'] as String,
      win: json['win'] as bool,
    );

Map<String, dynamic> _$$WordleHistoryImplToJson(_$WordleHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'wordGuess': instance.wordGuess,
      'wrongGuessTimes': instance.wrongGuessTimes,
      'gameDate': instance.gameDate,
      'win': instance.win,
    };
