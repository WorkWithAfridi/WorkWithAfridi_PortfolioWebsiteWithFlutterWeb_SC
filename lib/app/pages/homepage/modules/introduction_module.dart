import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/text_style.dart';

class IntroductionModule extends StatelessWidget {
  const IntroductionModule({
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
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Who am I?",
                style: ubuntuBold30,
              ),
              Text(
                "Hi, I'm Khondakar Afridi, a part-time Youtuber, a part-time gamer, and a full-time programmer.\nThe Internet people know me as Kyoto, a self-taught software engineer and an app developer located in Dhaka, Bangladesh.",
                style: quickSandRegular,
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Education",
                style: ubuntuBold30,
              ),
              Text(
                "I have completed my O'levels and A'levels under British Council Bangladesh, and my Bachelor's in Computer Science and Engineering from Independent University Bangladesh.",
                style: quickSandRegular,
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "What do I do?",
                style: ubuntuBold30,
              ),
              Text(
                "I build/make full-stack cross-platform Android, IOS, Web, and Windows apps/softwares using Flutter. :)\na.k.a - Full Stack Flutter Developer.",
                style: quickSandRegular,
              )
            ],
          ),
        ],
      ),
    );
  }
}
