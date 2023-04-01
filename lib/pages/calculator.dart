import 'package:binary_tools/widgets/calc_btn.dart';
import 'package:flutter/material.dart';

class MyButtonStyles {
  static ButtonStyle elevatedButtonStyle = ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all<Color>(Color.fromARGB(255, 59, 59, 59)),
    padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
  );
  static TextStyle textStyle = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 72,
                    width: 280,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.white,
                        width: 4,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('0101001', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )),
                    )),
                const SizedBox(width: 10),
                CalcBtn(label: '<', onPressed: () {}, icon: Icons.backspace),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcBtn(label: '0', onPressed: () {}, height: 318, width: 135),
                const SizedBox(width: 10),
                CalcBtn(label: '1', onPressed: () {}, height: 318, width: 135),
                const SizedBox(width: 10),
                Column(
                  children: [
                    CalcBtn(label: '+', onPressed: () {}),
                    const SizedBox(height: 10),
                    CalcBtn(label: '-', onPressed: () {}),
                    const SizedBox(height: 10),
                    CalcBtn(label: 'x', onPressed: () {}),
                    const SizedBox(height: 10),
                    CalcBtn(label: '÷', onPressed: () {}),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            CalcBtn(label: '=', onPressed: () {}, width: 378),
          ],
        ),
      ),
    );
  }
}
