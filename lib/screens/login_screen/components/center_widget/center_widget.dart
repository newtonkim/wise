import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wise/screens/login_screen/components/center_widget/center_widget_painter.dart';
import 'package:wise/screens/login_screen/components/center_widget/ceneter_widget_clipper.dart';

class CenterWidget extends StatelessWidget {
  final Size size;

  const CenterWidget(
      {
        super.key, 
        required this.size
      }
  );

  @override
  Widget build(BuildContext context) {
    final width = size.width;
    final height = size.height;

    final path = Path();
    path.moveTo(0, 0.17 * height);
    path.cubicTo(
      0.23 * width,
      0.12 * height, 
      0.36 * width,
      0.13 * height, 
      0.48 * width, 
      0.14 * height
    );
    path.cubicTo(
      0.6 * width, 
      0.15 * height,
      0.91 * width,
      0.23* height,
      0.94 * width, 
      0.34 * height
    );
    path.cubicTo(
      0.97 * width,
      0.46 * height,
      0.74 * width, 
      0.46 * height,
      0.66 * width, 
      0.56 * height
    );
    path.cubicTo(
      0.58 * width, 
      0.66 * height,
      0.72 * width,
      0.73 * height,
      0.68 * width, 
      0.81 * height
    );
    path.cubicTo(
      0.63 * width, 
      0.89 * height,
      0.45 * width, 
      0.97 * height,
      0.3 * width,
      height,
    );
    path.lineTo(0, height);
    path.close();

    return Stack(
      children: [
        CustomPaint(
          size: Size(width, height),
          painter: CenterWidgetPainter(path),
        ),
        ClipPath(
          clipper: CenterWidgetClipper(path: path),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                 child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(1, -0.6),
                        end: Alignment(-1, 0.8),
                        colors: [
                          Color(0x803DE896),
                          Color(0x4D76E3AE),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]
    );
  }
}