import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:workwithafridi/app/data/constants/text_style.dart';
import 'package:workwithafridi/app/pages/homepage/homepage_controller.dart';
import 'package:workwithafridi/app/pages/homepage/modules/appbar_module.dart';

import '../../shared/widgets/custom_divider.dart';
import 'modules/cover_module.dart';
import 'modules/introduction_module.dart';

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

class PublishedPackagesModule extends StatelessWidget {
  const PublishedPackagesModule({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Published Flutter/ Dart packages or plugins",
            style: ubuntuTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const PublishedPackageCard()
        ],
      ),
    );
  }
}

class PublishedPackageCard extends StatelessWidget {
  const PublishedPackageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "SelectCropCompressImage",
          style: ubuntuTextStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "- A package to select, crop and compress images all through one call. Image selection is done via Image Picker package, Image Cropping is achieved through the Image Copper package and finally the compression is done using the Flutter Image Compress package. ",
          style: quicksandTextStyle.copyWith(
            fontSize: 15,
          ),
        )
      ],
    );
  }
}

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

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 300,
        child: Row(
          children: [
            SizedBox(
              width: Get.width / 6,
              height: double.infinity,
              child: Image.network(
                "https://images.unsplash.com/photo-1541746972996-4e0b0f43e02a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Project Name",
                        style: ubuntuTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Stack: ",
                              style: ubuntuTextStyle,
                            ),
                            TextSpan(
                              text: "Flutter, Firebase & GetX",
                              style: quicksandTextStyle,
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Description: ",
                              style: ubuntuTextStyle,
                            ),
                            TextSpan(
                              text:
                                  "A full-stack Instagram Clone using Flutter, Firebase & Provider with built-in image compression and cropping facility. Users can log in/ signup,  post/ upload stories & memories, and can even post comments/ react on them. Users can also follow/ unfollow each other, chat ( Upcoming in V3.00 ), and even explore other users' posts and galleries ( Private/ Privacy profile coming in V3.00 ).",
                              style: quicksandTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    runSpacing: 8,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              FontAwesomeIcons.youtube,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Watch on Youtube",
                              style: ubuntuTextStyle.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              FontAwesomeIcons.download,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Download APK",
                              style: ubuntuTextStyle.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              FontAwesomeIcons.github,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "View on Github",
                              style: ubuntuTextStyle.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
