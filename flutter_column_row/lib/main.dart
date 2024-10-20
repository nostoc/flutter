import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            width: 500,
            height: 300,
            color: Colors.orange,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Flutter is Easy",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Text(
                  "Dart is Easy",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Icon(
                  Icons.settings_overscan_rounded,
                  size: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
