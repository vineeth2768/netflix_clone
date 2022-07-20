import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 550,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              kHeight20,
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 2,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 1),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 60,
          height: 550,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight20,
              const VideoWidget(),
              Row(
                children: [
                  const Text(
                    "Money Heist",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButton(
                        icons: Icons.notifications,
                        title: "Remind Me",
                        iconSize: 25,
                        textSize: 10,
                      ),
                      kWidth20,
                      CustomButton(
                        icons: Icons.info,
                        title: "Info",
                        iconSize: 25,
                        textSize: 10,
                      ),
                      kWidth10,
                    ],
                  )
                ],
              ),
              kHeight10,
              const Text(
                "Coming on friday",
                style: TextStyle(
                  color: kGrayColor,
                ),
              ),
              kHeight30,
              const Text(
                "Season 4",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight10,
              const Text(
                "The Professor's mole attempts to pass along his message to the person inside the tent. Denver's jealousy toward Mónica and Rio's friendship heightens.",
                style: TextStyle(
                  color: kGrayColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
