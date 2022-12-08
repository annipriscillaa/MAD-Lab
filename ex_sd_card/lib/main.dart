import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sd Card",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? _data;

  @override
  void initState() {
    super.initState();
    writeContent();
    readContent().then((String value) {
      setState(() {
        _data = value;
      });
    });
  }

  Future<String?> get _localPath async {
    final directory = await getExternalStorageDirectory();
    // print(directory?.path);
    return directory?.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<File> writeContent() async {
    final file = await _localFile;
    return file.writeAsString('Hello from the other side');
  }

  Future<String> readContent() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SD Card"),
        centerTitle: true,
      ),
      body: Center(child: Text('Data read from a file $_data')),
    );
  }
}
