// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wordle_history_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordleHistory _$WordleHistoryFromJson(Map<String, dynamic> json) {
  return _WordleHistory.fromJson(json);
}

/// @nodoc
mixin _$WordleHistory {
  int? get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get wordGuess => throw _privateConstructorUsedError;
  int get wrongGuessTimes => throw _privateConstructorUsedError;
  String get gameDate => throw _privateConstructorUsedError;
  bool get win => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordleHistoryCopyWith<WordleHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordleHistoryCopyWith<$Res> {
  factory $WordleHistoryCopyWith(
          WordleHistory value, $Res Function(WordleHistory) then) =
      _$WordleHistoryCopyWithImpl<$Res, WordleHistory>;
  @useResult
  $Res call(
      {int? id,
      int userId,
      String wordGuess,
      int wrongGuessTimes,
      String gameDate,
      bool win});
}

/// @nodoc
class _$WordleHistoryCopyWithImpl<$Res, $Val extends WordleHistory>
    implements $WordleHistoryCopyWith<$Res> {
  _$WordleHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? wordGuess = null,
    Object? wrongGuessTimes = null,
    Object? gameDate = null,
    Object? win = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      wordGuess: null == wordGuess
          ? _value.wordGuess
          : wordGuess // ignore: cast_nullable_to_non_nullable
              as String,
      wrongGuessTimes: null == wrongGuessTimes
          ? _value.wrongGuessTimes
          : wrongGuessTimes // ignore: cast_nullable_to_non_nullable
              as int,
      gameDate: null == gameDate
          ? _value.gameDate
          : gameDate // ignore: cast_nullable_to_non_nullable
              as String,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordleHistoryImplCopyWith<$Res>
    implements $WordleHistoryCopyWith<$Res> {
  factory _$$WordleHistoryImplCopyWith(
          _$WordleHistoryImpl value, $Res Function(_$WordleHistoryImpl) then) =
      __$$WordleHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int userId,
      String wordGuess,
      int wrongGuessTimes,
      String gameDate,
      bool win});
}

/// @nodoc
class __$$WordleHistoryImplCopyWithImpl<$Res>
    extends _$WordleHistoryCopyWithImpl<$Res, _$WordleHistoryImpl>
    implements _$$WordleHistoryImplCopyWith<$Res> {
  __$$WordleHistoryImplCopyWithImpl(
      _$WordleHistoryImpl _value, $Res Function(_$WordleHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? wordGuess = null,
    Object? wrongGuessTimes = null,
    Object? gameDate = null,
    Object? win = null,
  }) {
    return _then(_$WordleHistoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      wordGuess: null == wordGuess
          ? _value.wordGuess
          : wordGuess // ignore: cast_nullable_to_non_nullable
              as String,
      wrongGuessTimes: null == wrongGuessTimes
          ? _value.wrongGuessTimes
          : wrongGuessTimes // ignore: cast_nullable_to_non_nullable
              as int,
      gameDate: null == gameDate
          ? _value.gameDate
          : gameDate // ignore: cast_nullable_to_non_nullable
              as String,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordleHistoryImpl implements _WordleHistory {
  const _$WordleHistoryImpl(
      {this.id,
      required this.userId,
      required this.wordGuess,
      required this.wrongGuessTimes,
      required this.gameDate,
      required this.win});

  factory _$WordleHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleHistoryImplFromJson(json);

  @override
  final int? id;
  @override
  final int userId;
  @override
  final String wordGuess;
  @override
  final int wrongGuessTimes;
  @override
  final String gameDate;
  @override
  final bool win;

  @override
  String toString() {
    return 'WordleHistory(id: $id, userId: $userId, wordGuess: $wordGuess, wrongGuessTimes: $wrongGuessTimes, gameDate: $gameDate, win: $win)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.wordGuess, wordGuess) ||
                other.wordGuess == wordGuess) &&
            (identical(other.wrongGuessTimes, wrongGuessTimes) ||
                other.wrongGuessTimes == wrongGuessTimes) &&
            (identical(other.gameDate, gameDate) ||
                other.gameDate == gameDate) &&
            (identical(other.win, win) || other.win == win));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, wordGuess, wrongGuessTimes, gameDate, win);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleHistoryImplCopyWith<_$WordleHistoryImpl> get copyWith =>
      __$$WordleHistoryImplCopyWithImpl<_$WordleHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleHistoryImplToJson(
      this,
    );
  }
}

abstract class _WordleHistory implements WordleHistory {
  const factory _WordleHistory(
      {final int? id,
      required final int userId,
      required final String wordGuess,
      required final int wrongGuessTimes,
      required final String gameDate,
      required final bool win}) = _$WordleHistoryImpl;

  factory _WordleHistory.fromJson(Map<String, dynamic> json) =
      _$WordleHistoryImpl.fromJson;

  @override
  int? get id;
  @override
  int get userId;
  @override
  String get wordGuess;
  @override
  int get wrongGuessTimes;
  @override
  String get gameDate;
  @override
  bool get win;
  @override
  @JsonKey(ignore: true)
  _$$WordleHistoryImplCopyWith<_$WordleHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
