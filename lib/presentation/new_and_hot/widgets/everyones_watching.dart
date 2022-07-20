import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryoneWatching extends StatelessWidget {
  const EveryoneWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        const Text(
          "Friends",
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
        kHeight50,
        const VideoWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButton(
              icons: Icons.share,
              title: "share",
              iconSize: 40,
            ),
            kWidth20,
            CustomButton(
              icons: Icons.add,
              title: "My List",
              iconSize: 40,
            ),
            kWidth20,
            CustomButton(
              icons: Icons.play_arrow,
              title: "Play",
              iconSize: 40,
            ),
            kWidth20,
          ],
        )
      ],
    );
  }
}
