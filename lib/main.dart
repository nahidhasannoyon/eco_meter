import 'package:eco_meter/app/core/constants/app_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();
  runApp(
    ScreenUtilInit(
      designSize: const Size(402, 830),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Eco Meter',
          initialBinding: AppBindings(),
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
          enableLog: true,
          defaultTransition: Transition.fade,
          logWriterCallback: AppLogger().localLogWriter,
        );
      },
    ),
  );
}
