import 'package:binary_tools/widgets/clock_column.dart';
import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                children: const [
                  SizedBox(height: 160),
                  Text('H', style: TextStyle(color: Color.fromARGB(255, 119, 119, 119), fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(height: 153),
                  Text('M', style: TextStyle(color: Color.fromARGB(255, 119, 119, 119), fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(height: 153),
                  Text('S', style: TextStyle(color: Color.fromARGB(255, 119, 119, 119), fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClockColumn(),
                const SizedBox(height: 40),
                ClockColumn(),
                const SizedBox(height: 70),
                ClockColumn(),
                const SizedBox(height: 40),
                ClockColumn(),
                const SizedBox(height: 70),
                ClockColumn(),
                const SizedBox(height: 40),
                ClockColumn(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
