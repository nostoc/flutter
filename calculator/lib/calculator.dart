import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
//user inputs
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();

  int _result = 0;
//methods
  void add() {
    setState(() {
      int number1 = int.tryParse(_number1Controller.text) ?? 0;
      int number2 = int.tryParse(_number2Controller.text) ?? 0;
      _result = number1 + number2;
    });
  }

  /// Subtract the second number from the first number and set the result to _result.
  void substract() {
    setState(() {
      int number1 = int.tryParse(_number1Controller.text) ?? 0;
      int number2 = int.tryParse(_number2Controller.text) ?? 0;
      _result = number1 - number2;
    });
  }

  void divide() {
    setState(() {
      int number1 = int.tryParse(_number1Controller.text) ?? 0;
      int number2 = int.tryParse(_number2Controller.text) ?? 0;
      _result = (number1 / number2).ceil();
    });
  }

  /// If either of the two input fields is empty or cannot be parsed as an
  /// integer, the corresponding number is assumed to be 0.
  void multiply() {
    setState(() {
      int number1 = int.tryParse(_number1Controller.text) ?? 0;
      int number2 = int.tryParse(_number2Controller.text) ?? 0;
      _result = number1 * number2;
    });
  }

  @override
  void dispose() {
    _number1Controller.dispose();
    _number2Controller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Simple Calculator",
          style: TextStyle(color: Color(0xffffffff)),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color(0xFF686868),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _number1Controller,
                decoration: InputDecoration(
                  hintText: "Enter first number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: const BorderSide(
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _number2Controller,
                decoration: InputDecoration(
                  hintText: "Enter second number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: const BorderSide(
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              _result.toString(),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: add,
              child: const Text(
                "+",
                style: TextStyle(fontSize: 25),
              ),
            ),
            FloatingActionButton(
              onPressed: substract,
              child: const Text(
                "-",
                style: TextStyle(fontSize: 25),
              ),
            ),
            FloatingActionButton(
              onPressed: multiply,
              child: const Text(
                "x",
                style: TextStyle(fontSize: 25),
              ),
            ),
            FloatingActionButton(
              onPressed: divide,
              child: const Text(
                "/",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
