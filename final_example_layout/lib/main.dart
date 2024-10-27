import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final double borderRadius = 22;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 9, 172, 148),
          title: const Text("Final Layout"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadius),
                        color: Colors.red,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 150 / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: Colors.blue,
                ),
              ),
              Container(
                height: 150 / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 125 * 2,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 125 * 2,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadius),
                        color: Colors.blue,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          height: 110,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 150 / 2,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
