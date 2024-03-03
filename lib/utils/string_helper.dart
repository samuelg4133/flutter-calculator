class StringHelper {
  static String fromDoubleToString(double num) {
    if (num.isInfinite) return "0";

    return num % 1 == 0
        ? num.toStringAsFixed(0)
        : num.toString().replaceAll('.', ',');
  }

  static double toDouble(String numString) =>
      double.parse(numString.replaceAll(',', '.'));
}
