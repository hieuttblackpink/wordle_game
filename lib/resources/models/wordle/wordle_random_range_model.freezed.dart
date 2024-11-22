// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wordle_random_range_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordleRandomRangeModel _$WordleRandomRangeModelFromJson(
    Map<String, dynamic> json) {
  return _WordleRandomRangeModel.fromJson(json);
}

/// @nodoc
mixin _$WordleRandomRangeModel {
  RandomRange? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordleRandomRangeModelCopyWith<WordleRandomRangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordleRandomRangeModelCopyWith<$Res> {
  factory $WordleRandomRangeModelCopyWith(WordleRandomRangeModel value,
          $Res Function(WordleRandomRangeModel) then) =
      _$WordleRandomRangeModelCopyWithImpl<$Res, WordleRandomRangeModel>;
  @useResult
  $Res call({RandomRange? data, String? message, String? status, int? code});

  $RandomRangeCopyWith<$Res>? get data;
}

/// @nodoc
class _$WordleRandomRangeModelCopyWithImpl<$Res,
        $Val extends WordleRandomRangeModel>
    implements $WordleRandomRangeModelCopyWith<$Res> {
  _$WordleRandomRangeModelCopyWithImpl(this._value, this._then);

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
              as RandomRange?,
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

  @override
  @pragma('vm:prefer-inline')
  $RandomRangeCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RandomRangeCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WordleRandomRangeModelImplCopyWith<$Res>
    implements $WordleRandomRangeModelCopyWith<$Res> {
  factory _$$WordleRandomRangeModelImplCopyWith(
          _$WordleRandomRangeModelImpl value,
          $Res Function(_$WordleRandomRangeModelImpl) then) =
      __$$WordleRandomRangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RandomRange? data, String? message, String? status, int? code});

  @override
  $RandomRangeCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WordleRandomRangeModelImplCopyWithImpl<$Res>
    extends _$WordleRandomRangeModelCopyWithImpl<$Res,
        _$WordleRandomRangeModelImpl>
    implements _$$WordleRandomRangeModelImplCopyWith<$Res> {
  __$$WordleRandomRangeModelImplCopyWithImpl(
      _$WordleRandomRangeModelImpl _value,
      $Res Function(_$WordleRandomRangeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(_$WordleRandomRangeModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RandomRange?,
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
class _$WordleRandomRangeModelImpl implements _WordleRandomRangeModel {
  const _$WordleRandomRangeModelImpl(
      {this.data, this.message, this.status, this.code});

  factory _$WordleRandomRangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordleRandomRangeModelImplFromJson(json);

  @override
  final RandomRange? data;
  @override
  final String? message;
  @override
  final String? status;
  @override
  final int? code;

  @override
  String toString() {
    return 'WordleRandomRangeModel(data: $data, message: $message, status: $status, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordleRandomRangeModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, status, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordleRandomRangeModelImplCopyWith<_$WordleRandomRangeModelImpl>
      get copyWith => __$$WordleRandomRangeModelImplCopyWithImpl<
          _$WordleRandomRangeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordleRandomRangeModelImplToJson(
      this,
    );
  }
}

abstract class _WordleRandomRangeModel implements WordleRandomRangeModel {
  const factory _WordleRandomRangeModel(
      {final RandomRange? data,
      final String? message,
      final String? status,
      final int? code}) = _$WordleRandomRangeModelImpl;

  factory _WordleRandomRangeModel.fromJson(Map<String, dynamic> json) =
      _$WordleRandomRangeModelImpl.fromJson;

  @override
  RandomRange? get data;
  @override
  String? get message;
  @override
  String? get status;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$$WordleRandomRangeModelImplCopyWith<_$WordleRandomRangeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RandomRange _$RandomRangeFromJson(Map<String, dynamic> json) {
  return _RandomRange.fromJson(json);
}

/// @nodoc
mixin _$RandomRange {
  int? get minRange => throw _privateConstructorUsedError;
  int? get maxRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomRangeCopyWith<RandomRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomRangeCopyWith<$Res> {
  factory $RandomRangeCopyWith(
          RandomRange value, $Res Function(RandomRange) then) =
      _$RandomRangeCopyWithImpl<$Res, RandomRange>;
  @useResult
  $Res call({int? minRange, int? maxRange});
}

/// @nodoc
class _$RandomRangeCopyWithImpl<$Res, $Val extends RandomRange>
    implements $RandomRangeCopyWith<$Res> {
  _$RandomRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minRange = freezed,
    Object? maxRange = freezed,
  }) {
    return _then(_value.copyWith(
      minRange: freezed == minRange
          ? _value.minRange
          : minRange // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRange: freezed == maxRange
          ? _value.maxRange
          : maxRange // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomRangeImplCopyWith<$Res>
    implements $RandomRangeCopyWith<$Res> {
  factory _$$RandomRangeImplCopyWith(
          _$RandomRangeImpl value, $Res Function(_$RandomRangeImpl) then) =
      __$$RandomRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? minRange, int? maxRange});
}

/// @nodoc
class __$$RandomRangeImplCopyWithImpl<$Res>
    extends _$RandomRangeCopyWithImpl<$Res, _$RandomRangeImpl>
    implements _$$RandomRangeImplCopyWith<$Res> {
  __$$RandomRangeImplCopyWithImpl(
      _$RandomRangeImpl _value, $Res Function(_$RandomRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minRange = freezed,
    Object? maxRange = freezed,
  }) {
    return _then(_$RandomRangeImpl(
      minRange: freezed == minRange
          ? _value.minRange
          : minRange // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRange: freezed == maxRange
          ? _value.maxRange
          : maxRange // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomRangeImpl implements _RandomRange {
  const _$RandomRangeImpl({this.minRange, this.maxRange});

  factory _$RandomRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomRangeImplFromJson(json);

  @override
  final int? minRange;
  @override
  final int? maxRange;

  @override
  String toString() {
    return 'RandomRange(minRange: $minRange, maxRange: $maxRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomRangeImpl &&
            (identical(other.minRange, minRange) ||
                other.minRange == minRange) &&
            (identical(other.maxRange, maxRange) ||
                other.maxRange == maxRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minRange, maxRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomRangeImplCopyWith<_$RandomRangeImpl> get copyWith =>
      __$$RandomRangeImplCopyWithImpl<_$RandomRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomRangeImplToJson(
      this,
    );
  }
}

abstract class _RandomRange implements RandomRange {
  const factory _RandomRange({final int? minRange, final int? maxRange}) =
      _$RandomRangeImpl;

  factory _RandomRange.fromJson(Map<String, dynamic> json) =
      _$RandomRangeImpl.fromJson;

  @override
  int? get minRange;
  @override
  int? get maxRange;
  @override
  @JsonKey(ignore: true)
  _$$RandomRangeImplCopyWith<_$RandomRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
