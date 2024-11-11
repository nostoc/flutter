import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/reusable/home/catergory_card.dart';
import 'package:grocery_app/widgets/reusable/home/product_card.dart';
import 'package:grocery_app/widgets/reusable/home/search_bar.dart';
import 'package:grocery_app/widgets/app_bar/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarLeading,
        title: appBarTitle,
        actions: appBarActions,
        shadowColor: Colors.black12,
        elevation: 3,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBox(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore Categories",
                  style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CatergoryCard(
                      boxColor: Color(0xff06FFA5),
                      cardColor: Color(0xff9E00FF),
                      title: "Vegerables",
                      titleColor: Color(0xffffffff),
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      descriptionColor: Color(0xffC3C3C3),
                    ),
                    CatergoryCard(
                      boxColor: Color(0xff06FFA5),
                      cardColor: Color(0xff9E00FF),
                      title: "Fish & Meat",
                      titleColor: Color(0xffffffff),
                      description:
                          "Fish is the flesh of an animal used for food, and by that definition...",
                      descriptionColor: Color(0xffC3C3C3),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CatergoryCard(
                      boxColor: Color(0xffFF9900),
                      cardColor: Color(0xffFFE500),
                      title: "Vegerables",
                      titleColor: Color(0xff3B3636),
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      descriptionColor: Color(0xff3B3636),
                    ),
                    CatergoryCard(
                      boxColor: Color(0xffFF9900),
                      cardColor: Color(0xffFFE500),
                      title: "Fish & Meat",
                      titleColor: Color(0xff3B3636),
                      description:
                          "Fish is the flesh of an animal used for food, and by that definition...",
                      descriptionColor: Color(0xff3B3636),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "For Sale and Low Cost",
                  style: TextStyle(
                      color: Color(0xff3B3636),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCard(
                      productTitle: "Washing Liquid",
                      productVolume: "25 ml",
                      productPrice: "30 \$",
                    ),
                    ProductCard(
                      productTitle: "Coffee and Tea",
                      productVolume: "100 g",
                      productPrice: "26 \$",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
