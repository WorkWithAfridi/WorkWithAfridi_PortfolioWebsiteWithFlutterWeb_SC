import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 7,
      ),
      child: Container(
        width: Get.width,
        height: 1,
        color: Colors.black.withOpacity(.3),
      ),
    );
  }
}
