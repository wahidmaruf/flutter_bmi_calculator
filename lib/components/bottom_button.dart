import 'package:flutter/cupertino.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key, required this.onTap, required this.title,
  }) : super(key: key);

  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(title, style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}