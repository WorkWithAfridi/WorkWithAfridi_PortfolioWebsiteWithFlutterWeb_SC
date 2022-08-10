import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwithafridi/app/data/constants/text_style.dart';
import 'package:workwithafridi/app/pages/homepage/homepage_controller.dart';
import 'package:workwithafridi/app/pages/homepage/modules/appbar_module.dart';

import '../../shared/widgets/custom_divider.dart';
import 'modules/cover_module.dart';
import 'modules/introduction_module.dart';
import 'modules/published_packages_module.dart';
import 'modules/show_projects_module.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  HomepageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth.floor().toString());
          return Container(
            child: constraints.maxWidth < 900
                ? Center(
                    child: Text(
                      "Snap, sorry I didn't optimize the website for this screen size! :(",
                      style: quicksandTextStyle,
                    ),
                  )
                : SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: Stack(
                      children: [
                        NotificationListener<ScrollNotification>(
                          onNotification: (_) {
                            if (controller.homepageScrollController.value.offset
                                    .floor() >
                                Get.height - 80) {
                              controller.isAppBarTransparent.value = false;
                            } else if (controller
                                    .homepageScrollController.value.offset
                                    .floor() <
                                Get.height - 80) {
                              controller.isAppBarTransparent.value = true;
                            }
                            return false;
                          },
                          child: SingleChildScrollView(
                            controller:
                                controller.homepageScrollController.value,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HomepageCoverModule(
                                  constraints: constraints,
                                ),
                                const IntroductionModule(),
                                const CustomDivider(),
                                const ShowProjectsModule(),
                                const CustomDivider(),
                                const PublishedPackagesModule(),
                                const CustomDivider(),
                                Container(
                                  width: Get.width,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 50,
                                    horizontal: Get.width / 7,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Experience - ",
                                              style: ubuntuTextStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  "Coding & Programming related skills.",
                                              style:
                                                  quicksandTextStyle.copyWith(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: HomepageAppbarMobule(
                            constraints: constraints,
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
