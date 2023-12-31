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
          height: 500, 
          width: double.maxFinite, 
          child: Row(
            children: [
              Text("AK"), 
              TextButton(
                onPressed: (){}, 
                child: Text("button"),
              ),
            ],
          ),
        ),
        // Skills
        Container(
          height: 500, width: double.maxFinite, color: Colors.blueGrey,
        ),
        // PROJECTS
        Container(
          height: 500, width: double.maxFinite, 
        ),
        // Contact
        Container(
          height: 500, width: double.maxFinite, color: Colors.blueGrey,
        ),
        // Footer
        Container(
          height: 500, width: double.maxFinite,
        ),
      ],)
    );
  }
}