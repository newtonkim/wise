import 'package:flutter/material.dart';
import 'package:wise/utils/helper_functions.dart';
import 'package:wise/screens/login_screen/components/login_content.dart';
import 'package:wise/screens/login_screen/animations/change_screen_animation.dart';

class TopText extends StatefulWidget {
  const TopText({super.key});

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {
  @override
  void initState() {
    ChangeScreenAnimation.topTextAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          // Update state if needed
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HelperFunctions.wrapWithAnimatedBuilder(
      animation: ChangeScreenAnimation.topTextAnimation,
      child: Text(
        ChangeScreenAnimation.currentScreen == Screens.createAccount
            ? 'Create\nAccount'
            : 'Welcome\nBack',
        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
      ),
    );
  }
}
