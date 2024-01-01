import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Main
            Container(
              height: 60,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    CustomColor.bgLight1,
                  ],
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  Text("AK"),
                  Spacer(),
                  for (int i = 0; i < 5; i++)
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("button"),
                      ),
                    ),
                ],
              ),
            ),
            // Skills
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            // PROJECTS
            Container(
              height: 500,
              width: double.maxFinite,
            ),
            // Contact
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            // Footer
            Container(
              height: 500,
              width: double.maxFinite,
            ),
          ],
        ));
  }
}
