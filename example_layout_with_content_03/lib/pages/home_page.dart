import 'package:example_layout_with_content_03/widgets/icon_container.dart';
import 'package:example_layout_with_content_03/widgets/large_container.dart';
import 'package:example_layout_with_content_03/widgets/small_container.dart';
import 'package:example_layout_with_content_03/widgets/social_icon_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Flutter Blocks App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff9E00FF),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "User Interfaces with Flutter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xff06FFA5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(22),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    " In Flutter, the user interface is represented as a tree of widgets, commonly known as the widget tree.Each widget in the tree corresponds to a specific UI component, and the arrangement of these widgets defines the layout and appearance of the app. By understanding the widget tree, you can efficiently organize your UI components and create a seamless user experience.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallContainer(
                    title: "open-source",
                    description:
                        "Flutter is an open-source UI (User Interface) software development kit created by Google.",
                  ),
                  SmallContainer(
                    title: "widget tree",
                    description:
                        "In Flutter, the user interface is represented as a tree of widgets, commonly known as the widget tree",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const LargeContainer(
                title: "open-source",
                description:
                    "Flutter is an open-source UI (User Interface) software development kit created by Google.",
              ),
              const SizedBox(
                height: 20,
              ),
              const LargeContainer(
                title: "widget tree",
                description:
                    "In Flutter, the user interface is represented as a tree of widgets, commonly known as the widget tree",
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconContainer(
                    iconName: Icons.person_pin_circle,
                    iconBgColor: Color(0xff06FFA5),
                    iconColor: Color(0xff333333),
                  ),
                  IconContainer(
                    iconName: Icons.alarm,
                    iconBgColor: Color(0xff06FFA5),
                    iconColor: Color(0xffffffff),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color(0xff3B3636),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flutter Blocks App",
                      style: TextStyle(
                        color: Color(0xffE5F0FF),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015 and has gained significant popularity among developers due to its fast development cycle, expressive and flexible UI components, and excellent performance.",
                      style: TextStyle(
                        color: Color(0xff3B3636),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SocialIconBox(iconName: Icons.facebook,),
                          SocialIconBox(iconName: Icons.message,),
                          SocialIconBox(iconName: Icons.telegram,),
                          SocialIconBox(iconName: Icons.wechat_sharp,),
                          SocialIconBox(iconName: Icons.phone,),
                        ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
