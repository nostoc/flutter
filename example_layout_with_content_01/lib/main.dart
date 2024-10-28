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
      title: "Layout with content",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 10,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color:const Color(0xff85ffd3),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Text(
                    "Futter transforms the development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded experiences from a single codebase.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
               Container(
                  padding:const  EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color:const Color(0xFFCCD058),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Text(
                    "Futter transforms the development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded experiences from a single codebase.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
