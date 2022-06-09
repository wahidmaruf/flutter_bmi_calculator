import 'package:flutter/cupertino.dart';

class CustomBoxContainer extends StatelessWidget {
  const CustomBoxContainer({super.key, required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
        height: 170,
        child: cardChild,
      ),
    );
  }
}