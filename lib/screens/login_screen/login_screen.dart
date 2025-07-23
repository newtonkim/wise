import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:wise/screens/login_screen/components/login_content.dart';
import 'package:wise/screens/login_screen/components/center_widget/center_widget.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

@override
State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget topWidget(double screensWidth) {
    return Transform.rotate(
      angle: -35 * math.pi / 180, 
      child: Container(
        width: 1.2 * screensWidth,
        height: 1.2 * screensWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          gradient: LinearGradient(
            begin: Alignment(-0.2, -0.8),
            end: Alignment.bottomCenter,
            colors: [
              Color(0x007CBFCF),
              Color(0xB316BFC4),
            ],
          ),
        ),
      )
    );
  }

  Widget bottomWidget(double screensWidth) {
    return Transform.rotate(
      angle: 35 * math.pi / 180,
      child: Container(
        width: 1.5 * screensWidth,
        height: 1.5 * screensWidth,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment(-0.6, -1.1),
            end: Alignment(0.7, 0.8),
            colors: [
              Color(0xDB4BE8CC),
              Color(0x005CDBCF),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
         Positioned(
          top: -160,
          left: -30,
           child: topWidget(screenSize.width),
         ),
         Positioned(
          bottom: -180,
          right: -40,
           child: bottomWidget(screenSize.width),
         ),
         CenterWidget(size: screenSize),
         const LoginContent(),
        ],
      ),
    );
  }
}