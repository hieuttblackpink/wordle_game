import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:votee_mobile_coding_interview_project/resources/models/wordle/letter_model.dart';
import 'package:votee_mobile_coding_interview_project/resources/models/wordle/wordle_guess_model.dart';
import 'package:votee_mobile_coding_interview_project/resources/repository/abstract/wordle_guess_word_repo.dart';
import 'package:votee_mobile_coding_interview_project/resources/repository/implement/wordle_guess_word_repo_impl.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_enum.dart';

class WordleGameProvider extends ChangeNotifier {
  WordleGuessWordRepo repo = WordleGuessWordRepoImpl();
  Random r = Random();

  int minRange = 1000;
  int maxRange = 9999;

  int rowId = 0;
  int letterId = 0;

  int seedWord = 1234;

  String wordleMessage = "";
  String wordleGuess = "";
  WordleGameStatus wordleGameStatus = WordleGameStatus.playing;
  NetworkResponseType networkStatus = NetworkResponseType.success;

  List<List<LetterModel>> wordleBoardList = List.generate(
      6, (index) => List.generate(5, (index) => LetterModel(letter: "", status: "none")));

  Map<String, String> mappingLetterStatus = {};

  void initWordleGame() {
    getRandRange();
    notifyListeners();
  }

  Future<void> getRandRange() async {
    try {
      final respone = await repo.getRandRange();
      minRange = respone?.data?.minRange ?? 1000;
      maxRange = respone?.data?.maxRange ?? 9999;
    } on Exception catch (e) {
      debugPrint("Error: $e");
    } finally {
      seedWord = r.nextInt(maxRange - minRange) + minRange;
      debugPrint(seedWord.toString());
      notifyListeners();
    }
  }

  void insertLetterToWord({required String letter}) {
    if (wordleGameStatus == WordleGameStatus.won || wordleGameStatus == WordleGameStatus.lost) {
      return;
    }
    clearMessage();
    if (letterId < 5) {
      wordleBoardList[rowId][letterId].letter = letter;
      letterId++;
    }
    notifyListeners();
  }

  void removeLetterInWord() {
    if (wordleGameStatus == WordleGameStatus.won || wordleGameStatus == WordleGameStatus.lost) {
      return;
    }
    clearMessage();
    if (letterId > 0) {
      wordleBoardList[rowId][letterId - 1].letter = "";
      letterId--;
    }
    notifyListeners();
  }

  Future<void> guessWord() async {
    networkStatus = NetworkResponseType.loading;
    notifyListeners();

    String guess = wordleBoardList[rowId].map((e) => e.letter).join().toLowerCase();

    if (guess.isEmpty || guess.length < 5) {
      wordleMessage = "Please input your word";
      networkStatus = NetworkResponseType.success;
      notifyListeners();
      return;
    }

    try {
      final response = await repo.guessWord(word: guess, seed: seedWord);
      if (response?.code == 200) {
        int countCorrect = 0;
        for (WordleGuess wordleGuess in response?.data ?? []) {
          wordleBoardList[rowId][wordleGuess.slot ?? 0].status = wordleGuess.result ?? "none";
          if (mappingLetterStatus[(wordleGuess.guess ?? "").toUpperCase()] != "correct") {
            mappingLetterStatus[(wordleGuess.guess ?? "").toUpperCase()] = wordleGuess.result ?? "";
          }

          if (wordleGuess.result == "correct") {
            countCorrect++;
          }
        }

        if (countCorrect == 5) {
          wordleGameStatus = WordleGameStatus.won;
          wordleMessage = "Congratulation! You won the game 🎉";
        } else if (rowId == 5) {
          wordleGameStatus = WordleGameStatus.lost;
          wordleMessage = "Oh no! You lost the game";
        } else {
          rowId++;
          letterId = 0;
        }
        networkStatus = NetworkResponseType.success;
      } else {
        networkStatus = NetworkResponseType.success;
        wordleMessage = response?.message ?? "";
      }
    } on Exception catch (e) {
      debugPrint("Error: $e");
      networkStatus = NetworkResponseType.error;
    } finally {
      notifyListeners();
    }
  }

  void resetGame() {
    seedWord = r.nextInt(maxRange - minRange) + minRange;
    wordleBoardList = List.generate(
        6, (index) => List.generate(5, (index) => LetterModel(letter: "", status: "none")));
    rowId = 0;
    letterId = 0;
    mappingLetterStatus = {};
    wordleMessage = "";
    wordleGameStatus = WordleGameStatus.playing;
    networkStatus = NetworkResponseType.success;
    debugPrint(seedWord.toString());
    notifyListeners();
  }

  void clearMessage() {
    wordleMessage = "";
    //notifyListeners();
  }
}
