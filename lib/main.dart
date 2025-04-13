import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/core/config/app_bindings.dart';
import 'app/core/config/app_logger.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Repo Hunter',
      initialBinding: AppBindings(),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      enableLog: true,
      defaultTransition: Transition.fade,
      logWriterCallback: AppLogger().localLogWriter,
    ),
  );
}
