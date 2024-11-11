import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/reusable/category/category_card.dart';
import 'package:grocery_app/widgets/reusable/category/selected_items.dart';
import 'package:grocery_app/widgets/shared/notification_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Categories",
          style: TextStyle(
            color: Color(0xff000000),
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationCard(),
              SizedBox(
                height: 10,
              ),
              Text(
                "All Categories",
                style: TextStyle(
                  color: Color(0xff3B3636),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                        title: "Vegetables & \nFruits",
                        boxColor: Color(0xff0057FF),
                        amount: 25,
                        borderRadiusColor: Color(0xff0094FF),
                        circleColor: Color(0xff0E00AC),
                      ),
                      CategoryCard(
                        title: "Bites & \nDrinks",
                        boxColor: Color(0xff70FF00),
                        amount: 86,
                        borderRadiusColor: Color(0xff00FF29),
                        circleColor: Color(0xff06FFA5),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                        title: "Cooking & \nElements",
                        boxColor: Color(0xff00E0FF),
                        amount: 15,
                        borderRadiusColor: Color(0xff00F0FF),
                        circleColor: Color(0xff10C0F8),
                      ),
                      CategoryCard(
                        title: "Chicken & \nBeef",
                        boxColor: Color(0xffFFF500),
                        amount: 67,
                        borderRadiusColor: Color(0xffFFB800),
                        circleColor: Color(0xffFFB800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                        title: "Vegetables & \nFruits",
                        boxColor: Color(0xffFF3D00),
                        amount: 05,
                        borderRadiusColor: Color(0xffFFA800),
                        circleColor: Color(0xffE56C6C),
                      ),
                      CategoryCard(
                        title: "Transport & \nVehicles",
                        boxColor: Color(0xffCC00FF),
                        amount: 09,
                        borderRadiusColor: Color(0xffDB00FF),
                        circleColor: Color(0xffDB00FF),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Selected Items",
                style: TextStyle(
                  color: Color(0xff3B3636),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SelectedItems()
            ],
          ),
        ),
      ),
    );
  }
}
