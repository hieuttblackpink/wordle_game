import 'package:votee_mobile_coding_interview_project/resources/models/network/network_response_model.dart';
import 'package:votee_mobile_coding_interview_project/resources/models/wordle/wordle_guess_model.dart';
import 'package:votee_mobile_coding_interview_project/resources/models/wordle/wordle_random_range_model.dart';
import 'package:votee_mobile_coding_interview_project/resources/network/api_path.dart';
import 'package:votee_mobile_coding_interview_project/resources/network/network.dart';
import 'package:votee_mobile_coding_interview_project/resources/repository/abstract/wordle_guess_word_repo.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_enum.dart';

class WordleGuessWordRepoImpl implements WordleGuessWordRepo {
  @override
  Future<WordleRandomRangeModel?> getRandRange() async {
    NetworkResponseModel? response = await NetworkApi().networkCall(
      apiPath: ApiPath.randomRange,
      requestType: NetworkRequestType.get,
    );
    WordleRandomRangeModel? wordleRandRangeModel;
    response?.maybeWhen(
      success: (data) {
        wordleRandRangeModel = WordleRandomRangeModel.fromJson(data);
      },
      loading: (message) {},
      error: (message) {
        throw Exception(message);
      },
      orElse: () {
        throw Exception("Error");
      },
    );
    return wordleRandRangeModel;
  }

  @override
  Future<WordleGuessModel?> guessWord({required String word, int? seed}) async {
    NetworkResponseModel? response = await NetworkApi().networkCall(
        apiPath: ApiPath.guessRandom,
        requestType: NetworkRequestType.get,
        querryParams: {"word": word, "seed": seed ?? 1234});
    WordleGuessModel? wordleGuessModel;
    response?.maybeWhen(
      success: (data) {
        wordleGuessModel = WordleGuessModel.fromJson(data);
      },
      loading: (message) {},
      error: (message) {
        throw Exception(message);
      },
      orElse: () {
        throw Exception("Error");
      },
    );
    return wordleGuessModel;
  }
}
