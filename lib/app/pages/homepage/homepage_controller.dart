import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageController());
  }
}

class HomepageController extends GetxController {
  var homepageScrollController = ScrollController().obs;
  var isAppBarTransparent = true.obs;
  var currentPage = "Home".obs;
}
