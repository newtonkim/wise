import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:wise/constants/constants.dart';
import 'package:wise/screens/login_screen/components/top_text.dart';


enum Screens {
  createAccount,
  welcomeBack,
}
class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  Widget inputField(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData),
          ),
        ),
        ),
      ),
    );
  }

 Widget loginButton(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: const StadiumBorder(),
        backgroundColor: kSecondaryColor,
        elevation: 8,
        shadowColor: Colors.black87,
      ),
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text('OR'),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }


@override
Widget build(BuildContext context) {
  const currenScreen = Screens.createAccount;
  return Stack(
    children: [
      Positioned(
        top: 136,
        left: 24,
        child: TopText(
          screen: currenScreen,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            inputField('Name', Ionicons.person_outline),
            inputField('Email', Ionicons.mail_outline),
            inputField('Password', Ionicons.lock_closed_outline),
            loginButton('Sign Up'),
            orDivider(),
          ],
        ),
      ),
    ],
  );
}
}