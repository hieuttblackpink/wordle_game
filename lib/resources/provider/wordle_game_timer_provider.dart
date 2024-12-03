import 'dart:async';

import 'package:flutter/material.dart';

class WordleGameTimerProvider extends ChangeNotifier {
  int _guessTime = 0;
  Timer? timer;

  int get guessTime => _guessTime;

  void initTimer() {
    startTimer();
  }

  void startTimer() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _guessTime++;
      notifyListeners();
    });
  }

  void stopTimer() {
    timer?.cancel();
    timer = null;
  }

  void restartTimer() {
    stopTimer();
    _guessTime = 0;
    startTimer();
    notifyListeners();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
