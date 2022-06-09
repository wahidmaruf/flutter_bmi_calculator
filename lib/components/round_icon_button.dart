import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, required this.onPressed}) : super(key: key);

  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0, height: 56.0
      ),
      shape: const CircleBorder(),
        fillColor: Colors.blueGrey,
        onPressed: onPressed,
      child: Icon(icon)
    );
  }
}
