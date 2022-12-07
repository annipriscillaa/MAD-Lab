import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Gyroscope",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _dy = 0, _dx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gyroscope Application"),
        centerTitle: true,
      ),
      body: StreamBuilder<GyroscopeEvent>(
        stream: SensorsPlatform.instance.gyroscopeEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _dy = _dy + snapshot.data!.y * 10;
            _dx = _dx + snapshot.data!.x * 10;
          }
          return Stack(
            children: [
              Positioned(
                  child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    _dy = max(0, _dy + details.delta.dy);
                    _dx = max(0, _dx + details.delta.dx);
                  });
                },
                child: const CircleAvatar(),
              ))
            ],
          );
        },
      ),
    );
  }
}
