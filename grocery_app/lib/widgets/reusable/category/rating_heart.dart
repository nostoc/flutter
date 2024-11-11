import 'package:flutter/material.dart';

class RatingHeart extends StatelessWidget {
  const RatingHeart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xffCACACA).withOpacity(0.31),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.star,
              size: 40,
              color: Color(0xffFFE500),
            ),
            const Icon(
              Icons.star,
              size: 40,
              color: Color(0xffFFE500),
            ),
            const Icon(
              Icons.star,
              size: 40,
              color: Color(0xffFFE500),
            ),
            const Icon(
              Icons.star,
              size: 40,
              color: Color(0xffFFE500),
            ),
            Icon(
              Icons.star,
              size: 40,
              color: const Color(0xff3B3636).withOpacity(0.75),
            ),
          ],
        ),
      ),
    );
  }
}
