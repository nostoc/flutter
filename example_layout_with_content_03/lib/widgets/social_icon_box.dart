import 'package:flutter/material.dart';

class SocialIconBox extends StatelessWidget {
  final IconData iconName;

  const SocialIconBox({super.key, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff06FFA5), width: 3),
          borderRadius: BorderRadius.circular(25)),
      child:  Center(
        child: Icon(
          iconName,
          color:const Color(0xffffffff),
          size: 30,
        ),
      ),
    );
  }
}
