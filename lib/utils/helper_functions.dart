import 'package:flutter/cupertino.dart';

class HelperFunctions{

  static Widget wrapWithAnimatedBuilder({
    required Animation<Offset> animation,
    required Widget child,
  }) {
    return AnimatedBuilder(
      animation: animation,
      builder: (_, __) {
        return FractionalTranslation(
          translation: animation.value,
          child: child,
        );
      },
   
    );
  }
  
}