// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wordle_guess_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordleGuessModel _$WordleGuessModelFromJson(Map<String, dynamic> json) {
  return _WordleGuessModel.fromJson(json);
}

/// @nodoc
mixin _$WordleGuessModel {
  List<WordleGuess>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordleGuessModelCopyWith<WordleGuessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordleGuessModelCopyWith<$Res> {
  factory $WordleGuessModelCopyWith(
          WordleGuessModel value, $Res Function(WordleGuessModel) then) =
      _$WordleGuessModelCopyWithImpl<$Res, WordleGuessModel>;
  @useResult
  $Res call(
      {List<WordleGuess>? data, String? message, String? status, int? code});
}

/// @nodoc
class _$WordleGuessModelCopyWithImpl<$Res, $Val extends WordleGuessModel>
    implements $WordleGuessModelCopyWith<$Res> {
  _$WordleGuessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WordleGuess>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordleGuessModelImplCopyWith<$Res>
    implements $WordleGuessModelCopyWith<$Res> {
  factory _$$WordleGuessModelImplCopyWith(_$WordleGuessModelImpl value,
          $Res Function(_$WordleGuessModelImpl) then) =
      __$$WordleGuessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WordleGuess>? data, String? message, String? status, int? code});
}

/// @nodoc
class __$$WordleGuessModelImplCopyWithImpl<$Res>
    extends _$WordleGuessModelCopyWithImpl<$Res, _$WordleGuessModelImpl>
    implements _$$WordleGuessModelImplCopyWith<$Res> {
  __$$WordleGuessModelImplCopyWithImpl(_$WordleGuessModelImpl _value,
      $Res Function(_$WordleGuessModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(_$WordleGuessModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WordleGuess>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordleGuessModelImpl implements _WordleGuessModel {
  const _$WordleGuessModelImpl(
      {final List<WordleGuess>? data, this.message, this.status, this.code})
      : _data = data;

  factory _$WordleGuessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleGuessModelImplFromJson(json);

  final List<WordleGuess>? _data;
  @override
  List<WordleGuess>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;
  @override
  final String? status;
  @override
  final int? code;

  @override
  String toString() {
    return 'WordleGuessModel(data: $data, message: $message, status: $status, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleGuessModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), message, status, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleGuessModelImplCopyWith<_$WordleGuessModelImpl> get copyWith =>
      __$$WordleGuessModelImplCopyWithImpl<_$WordleGuessModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleGuessModelImplToJson(
      this,
    );
  }
}

abstract class _WordleGuessModel implements WordleGuessModel {
  const factory _WordleGuessModel(
      {final List<WordleGuess>? data,
      final String? message,
      final String? status,
      final int? code}) = _$WordleGuessModelImpl;

  factory _WordleGuessModel.fromJson(Map<String, dynamic> json) =
      _$WordleGuessModelImpl.fromJson;

  @override
  List<WordleGuess>? get data;
  @override
  String? get message;
  @override
  String? get status;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$$WordleGuessModelImplCopyWith<_$WordleGuessModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordleGuess _$WordleGuessFromJson(Map<String, dynamic> json) {
  return _WordleGuess.fromJson(json);
}

/// @nodoc
mixin _$WordleGuess {
  int? get slot => throw _privateConstructorUsedError;
  String? get guess => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordleGuessCopyWith<WordleGuess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordleGuessCopyWith<$Res> {
  factory $WordleGuessCopyWith(
          WordleGuess value, $Res Function(WordleGuess) then) =
      _$WordleGuessCopyWithImpl<$Res, WordleGuess>;
  @useResult
  $Res call({int? slot, String? guess, String? result});
}

/// @nodoc
class _$WordleGuessCopyWithImpl<$Res, $Val extends WordleGuess>
    implements $WordleGuessCopyWith<$Res> {
  _$WordleGuessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? guess = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      guess: freezed == guess
          ? _value.guess
          : guess // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordleGuessImplCopyWith<$Res>
    implements $WordleGuessCopyWith<$Res> {
  factory _$$WordleGuessImplCopyWith(
          _$WordleGuessImpl value, $Res Function(_$WordleGuessImpl) then) =
      __$$WordleGuessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? slot, String? guess, String? result});
}

/// @nodoc
class __$$WordleGuessImplCopyWithImpl<$Res>
    extends _$WordleGuessCopyWithImpl<$Res, _$WordleGuessImpl>
    implements _$$WordleGuessImplCopyWith<$Res> {
  __$$WordleGuessImplCopyWithImpl(
      _$WordleGuessImpl _value, $Res Function(_$WordleGuessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? guess = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WordleGuessImpl(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      guess: freezed == guess
          ? _value.guess
          : guess // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordleGuessImpl implements _WordleGuess {
  const _$WordleGuessImpl({this.slot, this.guess, this.result});

  factory _$WordleGuessImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleGuessImplFromJson(json);

  @override
  final int? slot;
  @override
  final String? guess;
  @override
  final String? result;

  @override
  String toString() {
    return 'WordleGuess(slot: $slot, guess: $guess, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleGuessImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.guess, guess) || other.guess == guess) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, guess, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleGuessImplCopyWith<_$WordleGuessImpl> get copyWith =>
      __$$WordleGuessImplCopyWithImpl<_$WordleGuessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleGuessImplToJson(
      this,
    );
  }
}

abstract class _WordleGuess implements WordleGuess {
  const factory _WordleGuess(
      {final int? slot,
      final String? guess,
      final String? result}) = _$WordleGuessImpl;

  factory _WordleGuess.fromJson(Map<String, dynamic> json) =
      _$WordleGuessImpl.fromJson;

  @override
  int? get slot;
  @override
  String? get guess;
  @override
  String? get result;
  @override
  @JsonKey(ignore: true)
  _$$WordleGuessImplCopyWith<_$WordleGuessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
