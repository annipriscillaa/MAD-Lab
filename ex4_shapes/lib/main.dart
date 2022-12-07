import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "shapes",
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Shapes'),
            centerTitle: true,
          ),
          body: const SingleChildScrollView(child: Shapes()),
        ));
  }
}

class Shapes extends StatelessWidget {
  const Shapes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Column(children: [
            const Padding(padding: EdgeInsets.all(15)),
            CustomPaint(
              size: const Size(300, 300),
              painter: LinePainter(),
            ),
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(width: (1))),
          child: Column(children: [
            const Padding(padding: EdgeInsets.all(15)),
            CustomPaint(
                size: const Size(200, 300), painter: RectanglePainter()),
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(15)),
              CustomPaint(
                size: const Size(300, 300),
                painter: CirclePainter(),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(15)),
              CustomPaint(
                size: const Size(200, 300),
                painter: OvalPainter(),
              )
            ],
          ),
        )
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10;

    Offset start = Offset(0, size.height / 2);
    Offset end = Offset(size.width / 2, size.height / 2);

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.deepOrange
      ..strokeWidth = 20;

    Rect rect = const Offset(0, 0) & size;

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.brown
      ..strokeWidth = 15;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.height / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class OvalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.indigo
      ..strokeWidth = 20;

    Rect rect = const Offset(0, 0) & size;

    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
