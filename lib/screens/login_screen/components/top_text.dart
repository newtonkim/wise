import 'package:flutter/material.dart';
import 'package:wise/screens/login_screen/components/login_content.dart';

class TopText extends StatelessWidget {
  final Screens screen;

  const TopText(
    {
      super.key, 
      required this.screen
    }
  );
  
  @override
  Widget build(BuildContext context) {
    return Text(
      screen == Screens.createAccount ? 'Create\nAccount' : 'Welcome\nBack',
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
    )
  }
}