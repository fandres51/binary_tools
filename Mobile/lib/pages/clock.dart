import 'dart:async';

import 'package:binary_tools/widgets/clock_column.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BinaryTime {
  List<String> binaryIntegers = [];

  BinaryTime() {
    DateTime now = DateTime.now();
    String hhmmss = DateFormat('Hms').format(now).replaceAll(':', '');

    binaryIntegers = hhmmss
        .split('')
        .map((e) => int.parse(e).toRadixString(2).padLeft(4, '0'))
        .toList();
  }

  get hourTens => binaryIntegers[0];
  get hourOnes => binaryIntegers[1];
  get minuteTens => binaryIntegers[2];
  get minuteOnes => binaryIntegers[3];
  get secondTens => binaryIntegers[4];
  get secondOnes => binaryIntegers[5];
}

class Clock extends StatefulWidget {
  const Clock({super.key});

  //create a function that returns the current time in hh:mm:ss format
  String getTime() {
    final DateTime now = DateTime.now();
    final String hour = now.hour.toString().padLeft(2, '0');
    final String minute = now.minute.toString().padLeft(2, '0');
    final String second = now.second.toString().padLeft(2, '0');
    return '$hour:$minute:$second';
  }

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  BinaryTime _now = BinaryTime();

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (v) {
      setState(() {
        _now = BinaryTime();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 25),
              child: Column(
                children: const [
                  SizedBox(height: 160),
                  Text('H',
                      style: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 153),
                  Text('M',
                      style: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 153),
                  Text('S',
                      style: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClockColumn(number: _now.hourTens),
                const SizedBox(height: 40),
                ClockColumn(number: _now.hourOnes),
                const SizedBox(height: 70),
                ClockColumn(number: _now.minuteTens),
                const SizedBox(height: 40),
                ClockColumn(number: _now.minuteOnes),
                const SizedBox(height: 70),
                ClockColumn(number: _now.secondTens),
                const SizedBox(height: 40),
                ClockColumn(number: _now.secondOnes),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
