import 'package:flutter/material.dart';
import 'package:hello_world/utils/string_helper.dart';

enum Operation { add, sub, multi, div }

class CalculatorController extends ChangeNotifier {
  String value = "0";
  String previousValue = "";
  Operation? operation;

  void backspace() {
    value = (value.isEmpty || value.length == 1)
        ? "0"
        : value.substring(0, value.length - 1);

    notifyListeners();
  }

  void calc() {
    if (operation == null) return;
    String prevString = previousValue ?? "0";
    double prev = StringHelper.toDouble(prevString);
    double valueAsNumber = StringHelper.toDouble(value);

    switch (operation) {
      case Operation.add:
        value = StringHelper.fromDoubleToString(prev + valueAsNumber);
        break;
      case Operation.sub:
        value = StringHelper.fromDoubleToString(prev - valueAsNumber);
        break;
      case Operation.multi:
        value = StringHelper.fromDoubleToString(prev * valueAsNumber);
        break;
      case Operation.div:
        value = StringHelper.fromDoubleToString(prev / valueAsNumber);
        break;
      default:
        break;
    }
    previousValue = "";
    operation = null;
    notifyListeners();
  }

  void clear() {
    value = "0";
    previousValue = "";
    operation = null;
    notifyListeners();
  }

  void invertValue() {
    if (value.isEmpty || value == "0") {
      return;
    }

    double valueAsNumber = StringHelper.toDouble(value);

    value = StringHelper.fromDoubleToString(-1 * valueAsNumber);
    notifyListeners();
  }

  bool isSelectedOperation(Operation newOperation) {
    return operation == newOperation;
  }

  void percentage() {
    if (value.isEmpty || value == "0") {
      return;
    }

    double valueAsNumber = StringHelper.toDouble(value);

    value = StringHelper.fromDoubleToString(valueAsNumber / 100);
    notifyListeners();
  }

  void setOperation(Operation newOperation) {
    if (previousValue.isNotEmpty) {
      calc();
    }

    operation = newOperation;
    previousValue = value;
    value = "0";
    notifyListeners();
  }

  void setValue(String newValue) {
    if (newValue == ",") {
      if (value.contains(",")) return;

      value = value + newValue;
    } else {
      value = value == "0" ? newValue : value + newValue;
    }

    notifyListeners();
  }

  static final CalculatorController instance = CalculatorController();
}
