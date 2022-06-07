import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF0A0E21),
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
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          // backgroundColor: Colors.deepPurple,
          appBar: AppBar(
            title: const Text("BMI Calculator"),
          ),
          body: const SafeArea(
              child: Text("Hello World")
          ),
        ),
      ),
    );
  }
}
