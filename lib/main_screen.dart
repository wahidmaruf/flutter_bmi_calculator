import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_box_container.dart';
import 'icon_container.dart';

const bottomContainerHeight = 60.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = const Color(0xFFEB1555);

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const data = 'MALE';
    const IconData mars = FontAwesomeIcons.mars;
    return Scaffold(
      // backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: const [
              Expanded(child: CustomBoxContainer(
                  color: activeCardColor,
                cardChild: IconContainer(icon: FontAwesomeIcons.mars, label: "Male"),

              )),
              Expanded(child:
              CustomBoxContainer(
                  color: activeCardColor,
                cardChild: IconContainer(icon: FontAwesomeIcons.venus, label: "Female"),
              )
              ),
            ],
          )),
          const Expanded(child: CustomBoxContainer(color: activeCardColor)),
          Expanded(
              child: Row(
            children: const [
              Expanded(child: CustomBoxContainer(color: activeCardColor)),
              Expanded(child: CustomBoxContainer(color: activeCardColor)),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}


