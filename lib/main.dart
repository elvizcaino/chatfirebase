import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui' show window;

import 'app/modules/main_bindings.dart';
import 'app/routes/app_pages.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Firebase',
      getPages: AppPages.routes,
      initialRoute: AppRoutes.LOGIN,
      initialBinding: MainBindings(),
      locale: window.locale,
    );
  }
}