import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/colors.dart';
import '../../../data/constants/text_style.dart';
import '../homepage_controller.dart';
import '../widgets/appbarTab.dart';

class HomepageAppbarMobule extends StatelessWidget {
  HomepageAppbarMobule({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  BoxConstraints constraints;
  HomepageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedContainer(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          height: 80,
          color:
              controller.isAppBarTransparent.value ? Colors.transparent : black,
          duration: const Duration(microseconds: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1540162875225-3f6b56d69fe8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Khondakar Afridi",
                    style: quicksandTextStyle.copyWith(
                      color: white,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              constraints.maxWidth > 1200
                  ? Row(
                      children: [
                        AppbarTab(
                          title: "Home",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        AppbarTab(
                          title: "About me",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        AppbarTab(
                          title: "Projects",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        AppbarTab(
                          title: "Github",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        AppbarTab(
                          title: "Certificates",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        AppbarTab(
                          title: "Research papers",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        AppbarTab(
                          title: "CV/ Resume",
                        ),
                      ],
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ));
  }
}
