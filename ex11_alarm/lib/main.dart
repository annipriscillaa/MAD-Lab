import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Alarm Clock",
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
  TimeOfDay time = const TimeOfDay(hour: 23, minute: 59);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alarm Clock"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Time Set",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}",
                    style: const TextStyle(fontSize: 24),
                  )
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () async {
                      TimeOfDay? newTime = await showTimePicker(
                          context: context, initialTime: time);
                      if (newTime == null) {
                        return;
                      }
                      setState(() {
                        time = newTime;
                      });
                    },
                    child: const Text(
                      "edit time",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      FlutterAlarmClock.createAlarm(time.hour, time.minute);
                    },
                    child: const Text(
                      "set alarm",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
