import 'package:bmi_calculator/model/bmi_model.dart';
import 'package:flutter/material.dart';

class BodyMassIndexingController {
  late TextEditingController textOfHeightBody = TextEditingController(text: '');
  late TextEditingController textOfWeightBody = TextEditingController(text: '');
  late BodyMassIndexingModel model = BodyMassIndexingModel();
  late String score = '0.0';
  late String resultClasification = '';
  late String gender = '';

  void resetText(){
    model.resetClasification();
    textOfWeightBody.text = '';
    textOfHeightBody.text = '';
  }

  String calculateResult(String gender) {
    model.setGender(gender);
    gender = model.getGender();

    double? heightDouble = double.tryParse(textOfHeightBody.text);
    double? weightDouble = double.tryParse(textOfWeightBody.text);

    if (heightDouble == null || weightDouble == null) {
      return "Input tidak valid";
    }

    model.setHeight(heightDouble);
    model.setWeight(weightDouble);

    model.checkResult();

    resultClasification = model.getClasification();
    score = model.getResult();
    return resultClasification;
  }

  String getScore(){
    return score;
  }


}