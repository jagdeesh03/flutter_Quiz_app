class Calculated {
  Calculated({required this.count});
  final int count;

  String getResult() {
    return count.toString();
  }

  String getApproach() {
    if (count > 9) {
      return '🥰 Amazing 🥰';
    } else if (count >= 5 && count <= 9) {
      return '😇 Good Keep it up 😇';
    } else {
      return '😞 Try Again ! 😞';
    }
  }
}
