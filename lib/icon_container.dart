import 'package:flutter/cupertino.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    var fontColor = const Color(0xFF8D8E98);
    var iconColor = const Color(0xFFD9D9DC);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: iconColor,
        ),
        const SizedBox(height: 15.0),
        Text(
          label,
          style: TextStyle(fontSize: 18.0, color: fontColor),
        )
      ],
    );
  }
}