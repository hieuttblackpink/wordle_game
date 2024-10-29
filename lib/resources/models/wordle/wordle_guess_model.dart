import 'package:freezed_annotation/freezed_annotation.dart';

part 'wordle_guess_model.freezed.dart';
part 'wordle_guess_model.g.dart';

@freezed
class WordleGuessModel with _$WordleGuessModel {
  const factory WordleGuessModel({List<WordleGuess>? data}) = _WordleGuessModel;

  factory WordleGuessModel.fromJson(Map<String, dynamic> json) => _$WordleGuessModelFromJson(json);
}

@freezed
class WordleGuess with _$WordleGuess {
  const factory WordleGuess({
    int? slot,
    String? guess,
    String? result,
  }) = _WordleGuess;

  factory WordleGuess.fromJson(Map<String, dynamic> json) => _$WordleGuessFromJson(json);
}
