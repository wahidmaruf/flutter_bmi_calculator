import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/model/BodyMassIndex.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';
import '../constants.dart';
import '../components/custom_box_container.dart';
import '../components/icon_container.dart';
import '../model/gender.dart';
import 'results_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender? selectedGender;
  int height = 150;
  int weight = 150;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: CustomBoxContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male ? kActiveCardColor : kInActiveCardColor,
                    cardChild: const IconContainer(icon: FontAwesomeIcons.mars, label: "Male"),
                  )
              ),
              Expanded(child: CustomBoxContainer(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                color: selectedGender == Gender.female ? kActiveCardColor : kInActiveCardColor,
                cardChild: const IconContainer(icon: FontAwesomeIcons.venus, label: "Female"),
              )

              ),
            ],
          )),
          Expanded(child:
              CustomBoxContainer(
                  color: kInActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Colors.pink,
                        overlayColor: Colors.pinkAccent.withAlpha(30),
                        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0)
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged:  (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }
                      ),
                    )
                  ],
                ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(child: CustomBoxContainer(
                  color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Weight',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      weight.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        const SizedBox(width: 10.0),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
              )),
              Expanded(child: CustomBoxContainer(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Age',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        const SizedBox(width: 10.0),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          )),
          BottomButton(
            onTap: () {
              BodyMassIndex bmi = BodyMassIndex(height, weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                bmiResult: bmi.calculateBMI(),
                result: bmi.getResult(),
                advice: bmi.getAdvice(),
              )));
            },
            title: 'Calculate',
          )
        ],
      ),
    );
  }
}




