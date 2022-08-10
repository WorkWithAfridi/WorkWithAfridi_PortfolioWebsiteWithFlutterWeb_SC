import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwithafridi/app/data/theme/theme.dart';
import 'package:workwithafridi/app/routes/ROUTES.dart';

void main(List<String> args) {
  runApp(const WorkWithAfridi());
}

class WorkWithAfridi extends StatelessWidget {
  const WorkWithAfridi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: ROUTES().pages,
      initialRoute: ROUTES.getHomepage,
      theme: CustomTheme.darkTheme,
    );
  }
}
