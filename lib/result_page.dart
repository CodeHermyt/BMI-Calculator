import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/iconContent.dart';
import 'package:flutter/material.dart';
import 'card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmi, @required this.result, @required this.review})
      : assert(result != null, review != null);
  final double bmi;
  final String result;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              'Your Result',
              style: yourResultTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result,
                      style: BMIResultTextStyle,
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: BMINumberTextStyle,
                    ),
                    Text(
                      review,
                      style: BMIReviewTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
