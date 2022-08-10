import 'dart:ui';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/colors.dart';
import '../../../data/constants/text_style.dart';
import '../homepage_controller.dart';

class HomepageCoverModule extends StatelessWidget {
  HomepageCoverModule({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;
  final HomepageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              "assets/images/home_cover.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: black.withOpacity(.7),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 50.0,
              vertical: 100.00,
            ),
            alignment: Alignment.center,
            height: Get.height,
            width: Get.width,
            child: Center(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                elevation: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 200.0,
                        vertical: 100.00,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "a ",
                              style: quicksandTextStyle.copyWith(
                                color: white,
                              ),
                            ),
                            TextSpan(
                              text: "CODE ",
                              style: quicksandTextStyle.copyWith(
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "a day,\n",
                              style: quicksandTextStyle.copyWith(
                                color: white,
                              ),
                            ),
                            TextSpan(
                              text: "keeps the ",
                              style: quicksandTextStyle.copyWith(
                                color: white,
                              ),
                            ),
                            TextSpan(
                              text: "BUG ",
                              style: quicksandTextStyle.copyWith(
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "away!",
                              style: quicksandTextStyle.copyWith(
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                controller.homepageScrollController.value.animateTo(
                  Get.height - 75,
                  duration: const Duration(
                    seconds: 1,
                  ),
                  curve: Curves.easeInOut,
                );
              },
              child: const AvatarGlow(
                repeat: true,
                endRadius: 40,
                child: Icon(
                  Icons.arrow_downward_rounded,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
