import 'package:flutter/material.dart';
import 'package:exercise10_alert/local_notification_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Alert",
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
  late final LocalNotificationService service;
  @override
  void initState() {
    super.initState();
    service = LocalNotificationService();
    service.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alert"),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.25),
            child: Column(
              children: [
                TextButton(
                    onPressed: () async {
                      await service.showNotification(
                        id: 0,
                        title: "sample title",
                        body: "sample body",
                      );
                    },
                    child: const Text("click to receive alert"))
              ],
            )));
  }
}
