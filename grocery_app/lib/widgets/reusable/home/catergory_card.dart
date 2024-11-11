import 'package:flutter/material.dart';

class CatergoryCard extends StatelessWidget {
  final Color cardColor;
  final String title;
  final Color titleColor;
  final String description;
  final Color descriptionColor;
  final Color boxColor;

  const CatergoryCard(
      {super.key,
      required this.cardColor,
      required this.title,
      required this.description,
      required this.titleColor,
      required this.descriptionColor,
      required this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Text(
              description,
              style: TextStyle(
                color: descriptionColor,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 130,
              height: 70,
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
