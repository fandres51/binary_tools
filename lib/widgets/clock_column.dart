// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

//create a steateless widget
class ClockColumn extends StatelessWidget {
  int number;
  ClockColumn({super.key, this.number = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BinarySquare(value: true),
        const SizedBox(width: 25),
        BinarySquare(value: false),
        const SizedBox(width: 25),
        BinarySquare(value: true),
        const SizedBox(width: 25),
        BinarySquare(value: true),
      ],
    );
  }
}

class BinarySquare extends StatelessWidget {
  bool value;
  BinarySquare({super.key, this.value = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        color: value ? Colors.white : Colors.transparent,
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
