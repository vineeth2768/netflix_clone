import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';

import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                kHeight10,
                MainTitleCard(
                  title: "Released in the past year",
                ),
                MainTitleCard(
                  title: "Tranding Now",
                ),
                NumberCardWidegt(),
                kHeight10,
                MainTitleCard(
                  title: "Tense Dramas",
                ),
                MainTitleCard(
                  title: "South Indian Cinemas",
                ),
              ],
            ),
          )),
    ));
  }
}
