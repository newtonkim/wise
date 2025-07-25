
import 'package:flutter/material.dart';
class CenterWidgetPainter extends CustomPainter {
  final Path path;

  CenterWidgetPainter(this.path);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0
      ..color = Colors.black26;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CenterWidgetPainter oldDelegate) => false;
}