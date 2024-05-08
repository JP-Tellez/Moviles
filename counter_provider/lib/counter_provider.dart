import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  // Variables
  Color _selectedColor = Colors.grey[350]!;
  int _counter = 0;

  // Geters
  Color get getSelectedColor => _selectedColor;
  int get getCounter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }

  void resetCounter() {
    _counter = 0;
    _selectedColor = Colors.grey[350]!;
    notifyListeners();
  }

  void changeBgColor(String color) {
    if (color == "black") {
      _selectedColor = Colors.black;
    }
    if (color == "red") {
      _selectedColor = Colors.red;
    }
    if (color == "blue") {
      _selectedColor = Colors.blue;
    }
    if (color == "green") {
      _selectedColor = Colors.green;
    }
    notifyListeners();
  }
}
