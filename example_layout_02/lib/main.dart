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
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Example Layout 02"),
          backgroundColor: const Color.fromARGB(255, 46, 125, 118),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: const Color(0xFF312E7D),
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: const Color(0xFF7D5D2E),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  width: 150,
                  height: 150,
                  color: const Color(0xFF7D2E2E),
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: const Color(0xFF7D2E7C),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
