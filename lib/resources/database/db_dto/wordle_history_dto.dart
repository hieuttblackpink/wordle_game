import 'package:freezed_annotation/freezed_annotation.dart';

part 'wordle_history_dto.freezed.dart';
part 'wordle_history_dto.g.dart';

@freezed
class WordleHistory with _$WordleHistory {
  const factory WordleHistory({
    int? id,
    required int userId,
    required String wordGuess,
    required int wrongGuessTimes,
    required String gameDate,
    required bool win, // Represent as a boolean for easier handling
  }) = _WordleHistory;

  factory WordleHistory.fromJson(Map<String, dynamic> json) => _$WordleHistoryFromJson(json);
}
