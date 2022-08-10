import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../data/constants/text_style.dart';

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
