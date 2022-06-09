import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF020509),
        scaffoldBackgroundColor:  const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21)
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white
          )
        )
      ),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: MainScreen(),
      ),
    );
  }
}
