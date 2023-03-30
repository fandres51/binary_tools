import 'package:binary_tools/pages/clock.dart';
import 'package:binary_tools/pages/translator.dart';
import 'package:binary_tools/pages/calculator.dart';
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

  final List<String> _titles = [
    'Clock',
    'Translator',
    'Calculator',
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
        appBar: AppBar(
          title: Text(_titles[_selectedIndex]),
          backgroundColor: Colors.grey[900],
        ),
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.grey[900],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[600],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
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
