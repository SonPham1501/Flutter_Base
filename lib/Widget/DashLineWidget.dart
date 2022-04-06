import 'package:flutter/material.dart';

class DashLineWidget extends StatelessWidget {
  final Color color;

  DashLineWidget({Key? key, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: DashedLinePainter(color: this.color),
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {

  final Color color;

  DashedLinePainter({Key? key,required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 2, dashSpace = 1, startX = 0;
    final paint = Paint()
      ..color = this.color
      ..strokeWidth = 0.5;
    while (startX < size.width - dashSpace) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
