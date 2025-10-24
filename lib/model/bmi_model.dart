class BodyMassIndexingModel {
  late String _gender = '';
  late double _height = 0.0, _weight = 0.0;
  late double _result = 0.0;
  late String _clasification = '';

  String getGender() => _gender;
  void setGender(String value) {
    _gender = value;
  }

  String getHeight() => _height.toString();
  void setHeight(double cm_value) {
    //covert CM input value into M
    _height = cm_value / 100;
  }

  String getWeight() => _weight.toString();
  void setWeight(double value) {
    _weight = value;
  }

  String getResult() => _result.toStringAsFixed(1);
  void checkResult() {
    _result = _weight / (_height * _height);

    if (_gender == 'female') {
      if (_result < 18.0) {
        _clasification = 'Kurus';
      } else if (_result >= 18.0 && _result <= 23.0) {
        _clasification = 'Normal';
      } else if (_result > 23.0 && _result <= 27.0) {
        _clasification = 'Gemuk';
      } else {
        _clasification = 'Obesitas';
      }
    } else if (_gender == 'male') {
      if (_result < 20.0) {
        _clasification = 'Kurus';
      } else if (_result >= 20.0 && _result <= 25.0) {
        _clasification = 'Normal';
      } else if (_result > 25.0 && _result <= 30.0) {
        _clasification = 'Gemuk';
      } else {
        _clasification = 'Obesitas';
      }
    }
    // } else {
    //   if (_result <= 18.5) {
    //     _clasification = 'Kurus';
    //   } else if (_result > 18.5 && _result <= 22.9) {
    //     _clasification = 'Normal';
    //   } else if (_result >= 23.0 && _result <= 24.9) {
    //     _clasification = 'Gemuk';
    //   } else {
    //     _clasification = 'Obesitas';
    //   }
    // }
  }

  String getClasification() => _clasification;
  void resetClasification() => _clasification = '';


}