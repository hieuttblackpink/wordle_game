import 'package:freezed_annotation/freezed_annotation.dart';

part 'wordle_random_range_model.freezed.dart';
part 'wordle_random_range_model.g.dart';

@freezed
class WordleRandomRangeModel with _$WordleRandomRangeModel {
  const factory WordleRandomRangeModel({
    RandomRange? data,
    String? message,
    String? status,
    int? code,
  }) = _WordleRandomRangeModel;

  factory WordleRandomRangeModel.fromJson(Map<String, dynamic> json) =>
      _$WordleRandomRangeModelFromJson(json);
}

@freezed
class RandomRange with _$RandomRange {
  const factory RandomRange({
    int? minRange,
    int? maxRange,
  }) = _RandomRange;

  factory RandomRange.fromJson(Map<String, dynamic> json) => _$RandomRangeFromJson(json);
}
