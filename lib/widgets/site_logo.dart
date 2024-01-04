import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    Key? key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.fromLTRB(1, 1, 0, 0),
        child: Image.asset(
          "assets/python.png",
          width: 88,
          height: 88,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
