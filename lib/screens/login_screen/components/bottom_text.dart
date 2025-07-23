import 'package:flutter/material.dart';
import 'package:wise/utils/constants.dart';
import 'package:wise/screens/login_screen/components/login_content.dart';
import 'package:wise/screens/login_screen/animations/change_screen_animation.dart';
import 'package:wise/utils/helper_functions.dart';

class BottomText extends StatefulWidget {
  const BottomText({super.key});

  @override
  State<BottomText> createState() => _BottomTextState();
}

class _BottomTextState extends State<BottomText> {
  @override
  void initState() {
    ChangeScreenAnimation.bottomTextAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          ChangeScreenAnimation.currentScreen =
              ChangeScreenAnimation.currentScreen == Screens.createAccount
              ? Screens.welcomeBack
              : Screens.createAccount;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HelperFunctions.wrapWithAnimatedBuilder(
      animation: ChangeScreenAnimation.bottomTextAnimation,
      child: GestureDetector(
        onTap: () {
          if (!ChangeScreenAnimation.isPlaying) {
            if (ChangeScreenAnimation.currentScreen == Screens.createAccount) {
              ChangeScreenAnimation.forward();
            } else {
              ChangeScreenAnimation.reverse();
            }
          }
        },
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
              children: [
                TextSpan(
                  text:
                      ChangeScreenAnimation.currentScreen ==
                          Screens.createAccount
                      ? 'Already have an account? '
                      : 'Don\'t have an account? ',
                  style: const TextStyle(
                    fontSize: 16,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      ChangeScreenAnimation.currentScreen ==
                          Screens.createAccount
                      ? 'Log In'
                      : 'Sign Up',
                  style: const TextStyle(
                    fontSize: 16,
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
