import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("application_name".tr),
      ),
      body: Column(
        children: [
          selfWidget(),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: double.infinity,
              minHeight: 50.0,
            ),
            child: const SizedBox(
              height: 50.0,
              width: 50.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Paint _paint = Paint()
  ..color = Colors.blueAccent //
  ..strokeCap = StrokeCap.round //
  ..isAntiAlias = true
  ..style = PaintingStyle.stroke
  ..filterQuality = FilterQuality.high
  ..strokeWidth = 5.0;

_drawLine(Canvas canvas) {
  Offset p1 = const Offset(20, 120);
  Offset p2 = const Offset(120, 20);
  canvas.drawLine(p1, p2, _paint);
}

class button extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    _drawLine(canvas);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw false;
  }
}

Widget selfWidget() {
  return CustomPaint(
    painter: button(),
  );
}
