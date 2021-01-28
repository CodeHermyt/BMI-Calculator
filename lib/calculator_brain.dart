import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  int height;
  int weight;
  double _calc;
  CalculatorBrain({@required this.height, @required this.weight}) {
    _calc = weight / pow(height / 100, 2);
  }

  double getBMI() {
    return _calc;
  }

  String getResult() {
    if (_calc > 25) {
      return 'Overweight';
    } else if (_calc > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getReview() {
    if (_calc > 25) {
      return 'Kam Kha Madarchod, Phatt jaega ek din';
    } else if (_calc > 18.5) {
      return 'Waah bete... Aise hi Mann laga k kaam karo';
    } else {
      return 'Gharwale khane ko nahi dete? saaley Gareeb';
    }
  }
}
