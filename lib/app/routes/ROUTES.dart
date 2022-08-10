import 'package:get/get.dart';
import 'package:workwithafridi/app/pages/homepage/homepage_controller.dart';
import 'package:workwithafridi/app/pages/homepage/homepage_screen.dart';

class ROUTES {
  ROUTES._internal();
  static final ROUTES _routes = ROUTES._internal();
  factory ROUTES() => _routes;

  static get getHomepage => "/homepage";
  List<GetPage> pages = [
    GetPage(
      name: getHomepage,
      page: () => const Homepage(),
      binding: HomeBinding(),
    ),
  ];
}
