import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/colors.dart';
import '../../../data/constants/text_style.dart';
import '../homepage_controller.dart';

class AppbarTab extends StatelessWidget {
  AppbarTab({
    Key? key,
    required this.title,
  }) : super(key: key);

  final HomepageController controller = Get.find();
  String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.currentPage.value = title;
      },
      child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: quickSandRegular.copyWith(
                  color: controller.currentPage.value == title
                      ? white
                      : white.withOpacity(.7),
                  fontWeight: controller.currentPage.value == title
                      ? FontWeight.w700
                      : FontWeight.normal,
                  fontSize: controller.currentPage.value == title ? 20 : 16,
                ),
              ),
              controller.currentPage.value == title
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 4,
                          width: 30,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        )
                      ],
                    )
                  : const SizedBox.shrink()
            ],
          )),
    );
  }
}
