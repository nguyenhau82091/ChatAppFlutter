import 'package:chat_app_clone/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "OpenSans",
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 7, 94, 84))
          // primaryColor: Color(0xFF075E54),
          // hintColor: Color(0xFF128C7E), //ThemeData
          ),
      home: HomeScreen(),
    );
  }
}
