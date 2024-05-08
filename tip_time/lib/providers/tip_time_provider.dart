import 'package:flutter/material.dart';

class TipTimeProvider extends ChangeNotifier {
  //variables
  var _costController = TextEditingController();
  bool _isRoundedRequested = false; // para redondear propina
  int? _currentRadioGroupValue; // indica el radio marcado como seleccionado
  double _propina = 0.0;

  //getters
  TextEditingController get getCostController => _costController;
  bool get getIsRoundedRequested => _isRoundedRequested;
  int? get getCurrentRadioGroupValue => _currentRadioGroupValue;
  double get getPropina => _propina;

  var radioGroupValues = {
    // contenido en texto de los radios
    0: "Amazing 20%",
    1: "Good 18%",
    2: "Ok 15%",
  };

  var radioGroupAssets = {
    // complete el contenido de assets para los radios
    0: "assets/black_like.png",
    1: "assets/color_like.png",
    2: "assets/transparent_like.png",
  };

  //metodos
  void setIsRoundedSelected(bool updatedSwitchValue) {
    _isRoundedRequested = updatedSwitchValue;
    notifyListeners();
  }

  void setSelectedRadio(int? updatedRadioValue) {
    _currentRadioGroupValue = updatedRadioValue;
    notifyListeners();
  }

  void tipCalculation() {
    // completar metodo para calcular cuanta propina se dejara
    // _costController
    double cost = double.tryParse(_costController.text) ?? 0.0;

    if (_currentRadioGroupValue == null || _costController.text.isEmpty) {
      _propina = 0.0;
    }

    switch (_currentRadioGroupValue) {
      case 0:
        _propina = cost * 0.2;
        break;
      case 1:
        _propina = cost * 0.18;
        break;
      case 2:
        _propina = cost * 0.15;
        break;
    }

    if (_isRoundedRequested) {
      _propina = _propina.ceilToDouble();
    }

    notifyListeners();
  }
}
