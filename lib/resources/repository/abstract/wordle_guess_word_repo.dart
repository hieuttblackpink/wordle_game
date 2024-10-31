import 'package:votee_mobile_coding_interview_project/resources/models/wordle/wordle_guess_model.dart';

abstract class WordleGuessWordRepo {
  Future<WordleGuessModel?> guessWord({required String word, int? seed});
}
