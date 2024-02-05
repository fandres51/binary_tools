// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

//create a steateless widget
class ClockColumn extends StatelessWidget {
  String number;
  ClockColumn({super.key, this.number = '0000'});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BinarySquare(value: number[3]),
        const SizedBox(width: 20),
        BinarySquare(value: number[2]),
        const SizedBox(width: 20),
        BinarySquare(value: number[1]),
        const SizedBox(width: 20),
        BinarySquare(value: number[0]),
      ],
    );
  }
}

class BinarySquare extends StatelessWidget {
  String value;
  BinarySquare({super.key, this.value = '0'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        color: value == '1' ? Colors.white : Colors.transparent,
        border: Border.all(color: Colors.white, width: 4),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
