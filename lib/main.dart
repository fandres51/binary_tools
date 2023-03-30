import 'package:binary_tools/pages/calculator.dart';
import 'package:binary_tools/pages/clock.dart';
import 'package:binary_tools/pages/translator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const BinaryTools(),
  );
}

class BinaryTools extends StatefulWidget {
  const BinaryTools({
    super.key,
  });

  @override
  State<BinaryTools> createState() => _BinaryToolsState();
}

class _BinaryToolsState extends State<BinaryTools> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    const Clock(),
    const Translator(),
    const Calculator(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.timelapse),
              label: 'Clock',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.transcribe),
              label: 'Translator',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Calculator',
            ),
          ],
        ),
      ),
    );
  }
}
