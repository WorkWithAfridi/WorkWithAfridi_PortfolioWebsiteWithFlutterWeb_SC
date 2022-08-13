import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workwithafridi/app/data/constants/colors.dart';

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

  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        // height: 300,
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
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              color: Colors.transparent,
              child: Row(
                children: const [
                  ProjectShowcaseButton(
                    icon: FontAwesomeIcons.youtube,
                    title: "Watch on Youtube",
                    color: Colors.red,
                    iconSize: 42,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ProjectShowcaseButton(
                    icon: FontAwesomeIcons.download,
                    title: "Download APK",
                    color: Colors.blue,
                    iconSize: 38,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ProjectShowcaseButton(
                    icon: FontAwesomeIcons.github,
                    title: "View on Github",
                    color: Colors.black,
                    iconSize: 42,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectShowcaseButton extends StatefulWidget {
  const ProjectShowcaseButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
    required this.iconSize,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Color color;
  final int iconSize;

  @override
  State<ProjectShowcaseButton> createState() => _ProjectShowcaseButtonState();
}

class _ProjectShowcaseButtonState extends State<ProjectShowcaseButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHovering = !isHovering;
        });
      },
      onTap: () {
        log("Tapped");
      },
      child: isHovering
          ? Container(
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(10),
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
                    color: white,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.title,
                    style: ubuntuTextStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ))
          : Icon(
              widget.icon,
              color: widget.color,
              size: widget.iconSize.toDouble(),
            ),
    );
  }
}
