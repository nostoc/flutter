import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    width: 30,
    height: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: const Color(0xff9E00FF),
    ),
    child: const Icon(
      Icons.location_pin,
      size: 20,
      color: Color(
        0xffffffff,
      ),
    ),
  ),
);

Widget appBarTitle = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
        color: const Color(0xff3B3636).withOpacity(0.47),
        fontSize: 16,
      ),
    ),
    const Text(
      "92 High Street , London",
      style: TextStyle(
          color: Color(0xff3B3636), fontSize: 18, fontWeight: FontWeight.bold),
    ),
  ],
);

List<Widget>? appBarActions = [
  Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Container(
      width: 43,
      height: 43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xffff9900).withOpacity(0.52),
      ),
      child: const Icon(
        Icons.camera_alt,
        size: 20,
        color: Color(
          0xffffffff,
        ),
      ),
    ),
  )
];
