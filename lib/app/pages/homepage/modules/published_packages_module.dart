import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/text_style.dart';
import '../widgets/published_package_card.dart';

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
