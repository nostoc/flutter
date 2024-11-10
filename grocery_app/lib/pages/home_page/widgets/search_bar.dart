import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9).withOpacity(0.50),
        border: Border.all(
          color: const Color(0xff333333).withOpacity(0.30),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.search,
              size: 30,
              color: const Color(0xff333333).withOpacity(0.50),
            ),
          ),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: "Seach here...",
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: const Color(0xff3B3636).withOpacity(0.47),
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 9),
              ),
            ),
          )
        ],
      ),
    );
  }
}