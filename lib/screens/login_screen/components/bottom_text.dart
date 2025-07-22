import 'package:flutter/material.dart';
class BottomText extends StatelessWidget {
  final Screens screen;

  const BottomText(
    {
      super.key, 
      required this.screen
    }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // In the next part
      },
      behavior: HitTestBehavior.opaque,
     child: Padding(
        padding: const EdgeInsets.all(16),
         child:RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat',
          ),
          children: [
            TextSpan(
              text: screen == Screens.createAccount ?  text: screen == Screens.createAccount 
                ? 'Already have an account? ' 
                : 'Don\'t have an account? ',
              style: const TextStyle(
                fontSize: 16,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: screen == Screens.createAccount ? 'Log In' : 'Sign Up',
              style: const TextStyle(
                fontSize: 16,
                color: kSecondaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
     )
    )
  }
}