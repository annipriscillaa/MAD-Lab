import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: const Center(
          child: Text(
        "Hello World!",
        style: TextStyle(
            fontSize: 24.0, color: Colors.purple, fontFamily: 'TimesNow'),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blueGrey,
          child: const Text("+")),
    );
  }
}
