import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final int itemNumber;
  final String title;
  const ItemCard({
    super.key,
    required this.itemNumber,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xffFFE500),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Text(
              itemNumber.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 300,
          child: Text(
            title,
            style: TextStyle(
              color: const Color(0xff3B3636).withOpacity(0.75),
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
