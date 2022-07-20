import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/everyones_watching.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                "New & Hot",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cast,
                    size: 25,
                    color: kWhiteColor,
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  color: kBlueColor,
                ),
              ],
              bottom: TabBar(
                  labelColor: kBlackColor,
                  labelStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                  unselectedLabelColor: kWhiteColor,
                  indicator: BoxDecoration(
                      color: kWhiteColor, borderRadius: kRadius30),
                  isScrollable: true,
                  tabs: const [
                    Tab(text: "🍿 Coming Soon"),
                    Tab(text: "👀 Everyone's Watching"),
                  ]),
            ),
          ),
          body: TabBarView(
            children: [
              _buildComingSoon(),
              _buildEveryonWatching(),
            ],
          )),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveryonWatching() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) => const EveryoneWatching(),
      itemCount: 10,
    );
  }
}
