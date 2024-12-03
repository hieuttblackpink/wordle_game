abstract class StringFormat {
  static String formatTime(int second) {
    final m = second ~/ 60;
    final s = second % 60;
    return "${m.toString().padLeft(2, "0")}:${s.toString().padLeft(2, "0")}";
  }
}
