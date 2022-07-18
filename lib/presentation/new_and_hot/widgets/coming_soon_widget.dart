import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button.dart';

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
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Image.network(
                      "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/lcTuggU70y6pt6x13Rv1Ffjs93K.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black.withOpacity(0.5),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off_sharp,
                          size: 30,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
