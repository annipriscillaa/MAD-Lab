import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Multi Threading",
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
  int randint = 0;
  static FutureOr<int> randgen(int cal) {
    var rng = Random();
    return rng.nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MultiThreading"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Random Number is :"),
                Text(
                  "${randint}",
                  style: const TextStyle(fontSize: 24.0),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            TextButton(
                onPressed: () async {
                  int result = await compute(randgen, randint);
                  setState(() {
                    randint = result;
                  });
                },
                child: const Text(
                  "Press me!",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ));
  }
}
