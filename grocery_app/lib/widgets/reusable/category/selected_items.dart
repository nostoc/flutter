import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/reusable/category/item_card.dart';
import 'package:grocery_app/widgets/reusable/category/rating_heart.dart';

class SelectedItems extends StatelessWidget {
  const SelectedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
        color: const Color(0xffE0DCD6).withOpacity(0.29),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color.fromARGB(255, 92, 91, 91).withOpacity(0.90),
          width: 4,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vegetables",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(
                    0xff3B3636,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            ItemCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              itemNumber: 1,
            ),
            ItemCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              itemNumber: 2,
            ),
            ItemCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              itemNumber: 3,
            ),
            ItemCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              itemNumber: 4,
            ),
            ItemCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              itemNumber: 5,
            ),
            SizedBox(
              height: 10,
            ),
            RatingHeart(),
          ],
        ),
      ),
    );
  }
}
