import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData iconName;
  final Color iconBgColor;
  final Color iconColor;
  const IconContainer(
      {super.key,
      required this.iconName,
      required this.iconBgColor,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: iconBgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(22),
        ),
      ),
      child: Icon(
        iconName,
        size: 150,
        color: iconColor,
      ),
    );
  }
}
