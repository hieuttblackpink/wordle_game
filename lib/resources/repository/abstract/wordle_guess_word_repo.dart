import 'package:votee_mobile_coding_interview_project/resources/models/wordle/wordle_guess_model.dart';
import 'package:votee_mobile_coding_interview_project/resources/models/wordle/wordle_random_range_model.dart';

abstract class WordleGuessWordRepo {
  Future<WordleRandomRangeModel?> getRandRange();
  Future<WordleGuessModel?> guessWord({required String word, int? seed});
}
