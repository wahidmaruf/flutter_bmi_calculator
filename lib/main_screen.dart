import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'custom_box_container.dart';
import 'icon_container.dart';
import 'model/gender.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
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
          const Expanded(child: CustomBoxContainer(color: kInActiveCardColor)),
          Expanded(
              child: Row(
            children: const [
              Expanded(child: CustomBoxContainer(color: kActiveCardColor)),
              Expanded(child: CustomBoxContainer(color: kActiveCardColor)),
            ],
          )),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}


