//create a a widget return an elevated button with given height, label and behavor

import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  final double height;
  final double width;
  final String label;
  final IconData? icon;
  final Function() onPressed;

  const CalcBtn({
    Key? key,
    this.height = 72,
    this.width = 88,
    this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: icon == null? Text(label, style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        ) : Icon(icon, color: Colors.black),
      ),
    );
  }
}
