import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("projects"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 138, 43, 43),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Name",
                  style:
                      TextStyle(color: Colors.deepOrange, letterSpacing: 2.0),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Anni Priscilla A",
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num++;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        num = num + 2;
                      });
                    },
                    child: const Icon(Icons.add)),
                Text("$num",
                    style: const TextStyle(
                        fontSize: 24.0,
                        color: Colors.green,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ));
  }
}
