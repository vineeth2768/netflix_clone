import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icons,
    required this.title,
    this.iconSize = 30,
    this.textSize = 12,
  }) : super(key: key);

  final IconData icons;
  final String title;
  final double iconSize;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icons,
          color: kWhiteColor,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(color: kWhiteColor, fontSize: textSize),
        )
      ],
    );
  }
}
