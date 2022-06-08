import 'package:flutter/cupertino.dart';

class CustomBoxContainer extends StatelessWidget {
  const CustomBoxContainer({super.key, required this.color, this.cardChild});

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      // width: 200,
      height: 170,
      child: cardChild,
    );
  }
}