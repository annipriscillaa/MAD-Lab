//https://shapemaker.web.app/#/

import 'dart:ui' as ui;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "car",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car"),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          child: CustomPaint(
            size: Size(
                300,
                (300 * 0.5833333333333334)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
        )
      ]),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7237750, size.height * 0.5580857);
    path0.cubicTo(
        size.width * 0.7404417,
        size.height * 0.5580857,
        size.width * 0.7654417,
        size.height * 0.5780857,
        size.width * 0.7654417,
        size.height * 0.6295143);
    path0.cubicTo(
        size.width * 0.7654417,
        size.height * 0.6580857,
        size.width * 0.7529417,
        size.height * 0.7009429,
        size.width * 0.7237750,
        size.height * 0.7009429);
    path0.cubicTo(
        size.width * 0.7071083,
        size.height * 0.7009429,
        size.width * 0.6821083,
        size.height * 0.6795143,
        size.width * 0.6821083,
        size.height * 0.6295143);
    path0.cubicTo(
        size.width * 0.6821083,
        size.height * 0.6009429,
        size.width * 0.6946083,
        size.height * 0.5580857,
        size.width * 0.7237750,
        size.height * 0.5580857);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.4526917, size.height * 0.5466286);
    path1.cubicTo(
        size.width * 0.4693583,
        size.height * 0.5485286,
        size.width * 0.4943583,
        size.height * 0.5666286,
        size.width * 0.4943583,
        size.height * 0.6180571);
    path1.cubicTo(
        size.width * 0.4943583,
        size.height * 0.6466286,
        size.width * 0.4818583,
        size.height * 0.6894857,
        size.width * 0.4526917,
        size.height * 0.6894857);
    path1.cubicTo(
        size.width * 0.4360250,
        size.height * 0.6894857,
        size.width * 0.4110250,
        size.height * 0.6680571,
        size.width * 0.4110250,
        size.height * 0.6180571);
    path1.cubicTo(
        size.width * 0.4110250,
        size.height * 0.5894857,
        size.width * 0.4235250,
        size.height * 0.5485286,
        size.width * 0.4526917,
        size.height * 0.5466286);
    path1.close();

    canvas.drawPath(path1, paint1);

    Paint paint2 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path2 = Path();
    path2.moveTo(size.width * 0.4241667, size.height * 0.3142857);
    path2.quadraticBezierTo(size.width * 0.6291667, size.height * 0.3142857,
        size.width * 0.6975000, size.height * 0.3142857);
    path2.lineTo(size.width * 0.7075000, size.height * 0.4700000);
    path2.lineTo(size.width * 0.8133333, size.height * 0.4914286);
    path2.lineTo(size.width * 0.8100000, size.height * 0.6100000);
    path2.lineTo(size.width * 0.7516667, size.height * 0.6071429);
    path2.lineTo(size.width * 0.7483333, size.height * 0.5642857);
    path2.lineTo(size.width * 0.7283333, size.height * 0.5514286);
    path2.lineTo(size.width * 0.7083333, size.height * 0.5528571);
    path2.lineTo(size.width * 0.7000000, size.height * 0.5814286);
    path2.lineTo(size.width * 0.6975000, size.height * 0.6071429);
    path2.lineTo(size.width * 0.4816667, size.height * 0.5957143);
    path2.lineTo(size.width * 0.4800000, size.height * 0.5771429);
    path2.lineTo(size.width * 0.4808333, size.height * 0.5485714);
    path2.lineTo(size.width * 0.4525000, size.height * 0.5428571);
    path2.lineTo(size.width * 0.4358333, size.height * 0.5500000);
    path2.lineTo(size.width * 0.4208333, size.height * 0.5671429);
    path2.lineTo(size.width * 0.4200000, size.height * 0.5857143);
    path2.lineTo(size.width * 0.3258333, size.height * 0.5842857);
    path2.lineTo(size.width * 0.3250000, size.height * 0.4928571);
    path2.lineTo(size.width * 0.3958333, size.height * 0.4685714);
    path2.quadraticBezierTo(size.width * 0.4029167, size.height * 0.4300000,
        size.width * 0.4241667, size.height * 0.3142857);
    path2.close();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
