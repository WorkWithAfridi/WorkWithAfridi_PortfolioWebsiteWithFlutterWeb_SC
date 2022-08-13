import 'package:flutter/material.dart';

import '../../../data/constants/text_style.dart';

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
        const SizedBox(
          height: 4,
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
