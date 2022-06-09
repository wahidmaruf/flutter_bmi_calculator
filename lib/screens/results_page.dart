import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/custom_box_container.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key, required this.bmiResult, required this.result, required this.advice}) : super(key: key);
  final String bmiResult;
  final String result;
  final String advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  'Result', style: kTitleTextStyle,
                ),
              )
          ),
          Expanded(
            flex: 5,
            child: CustomBoxContainer(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Text(
                      result,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiTextStyle,
                    ),
                    Text(
                      advice,
                      style: kBodyTextStyle,
                    ),
                ],
              ),
            ),
          ),
          BottomButton(onTap: () {
            Navigator.pop(context);
          }, title: 'Re-calculate')
        ],
      ),
    );
  }
}
