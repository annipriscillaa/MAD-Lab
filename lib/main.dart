import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Rest based API",
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
  late Future<Map<String, dynamic>> info;
  Future<Map<String, dynamic>> giver() async {
    var response =
        await http.get(Uri.parse("http://www.boredapi.com/api/activity"));
    Future<Map<String, dynamic>> result = json.decode(response.body);
    return result;
  }

  @override
  void initState() {
    super.initState();
    info = giver();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bored API"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  setState(
                    () {
                      info = giver();
                    },
                  );
                },
                icon: const Icon(Icons.refresh_rounded))
          ],
        ),
        body: FutureBuilder<Map<String, dynamic>>(
          future: info,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            Map<String, dynamic> data = {};
            if (snapshot.hasData) {
              data = snapshot.data!;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("activity:${data["activity"]}"),
                    Text("type:${data["type"]}"),
                    Text("participants:${data["participants"]}"),
                    Text("price:\$${data["price"]}"),
                  ],
                ),
              );
            }
            return Container();
          },
        ));
  }
}
