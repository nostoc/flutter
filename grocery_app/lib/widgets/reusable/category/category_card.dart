import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color boxColor;
  final Color borderRadiusColor;

  final Color circleColor;
  final int amount;

  const CategoryCard(
      {super.key,
      required this.title,
      required this.boxColor,
      required this.borderRadiusColor,
      required this.circleColor,
      required this.amount});

  final double categoryCardHeight = 100;
  final double categoryCardWidth = 190;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: categoryCardWidth,
      height: categoryCardHeight,
      decoration: BoxDecoration(
        color: boxColor.withOpacity(0.29),
        border: Border.all(color: borderRadiusColor),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: const Color(0xff3B3636).withOpacity(0.91),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "$amount + more...",
                    style: TextStyle(
                      color: const Color(0xff3B3636).withOpacity(0.47),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: circleColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
