import 'package:flutter/material.dart';
import 'package:wise/constants/constants.dart';
import 'package:wise/screens/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wise App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kPrimaryColor,
          fontFamily: 'Montserrat',
        ),
      ),

      home: LoginScreen(),
     
    );
  }
}


