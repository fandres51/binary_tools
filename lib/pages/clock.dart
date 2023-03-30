import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clock"),
      ),
      body: const Center(
        child: Text("Clock"),
      ),
    );
  }
}
