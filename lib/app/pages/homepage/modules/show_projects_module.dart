import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/text_style.dart';
import '../widgets/past_project_card.dart';

class ShowProjectsModule extends StatelessWidget {
  const ShowProjectsModule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: Get.width / 7,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Showcase PROJECTS.",
                style: ubuntuTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "*You can view all of my past projects under the 'Projects' section, located on the navigation menu.",
                style: quicksandTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: ((context, index) {
              return const ProjectCard();
            }),
          )
          // GridView.builder(
          //   shrinkWrap: true,
          //   physics: const BouncingScrollPhysics(),
          //   gridDelegate: SliverQuiltedGridDelegate(
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 25,
          //     crossAxisSpacing: 25,
          //     pattern: [
          //       const QuiltedGridTile(1, 1),
          //       const QuiltedGridTile(1, 1),
          //     ],
          //   ),
          //   itemCount: 4,
          //   itemBuilder: ((context, index) {
          //     return const ProjectCard();
          //   }),
          // )
        ],
      ),
    );
  }
}
