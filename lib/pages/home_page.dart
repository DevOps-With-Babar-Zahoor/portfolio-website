import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // Main
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                height: screenSize.height / 1.3,
                constraints: const BoxConstraints(
                  minHeight: 350.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hi,\nI'm Shohruh AK\nA Flutter Developer"),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Get in Touch",
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/my_flutter_avatar.png",
                      width: screenWidth / 2,
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
    });
  }
}
