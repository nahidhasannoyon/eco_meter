import 'package:eco_meter/app/core/constants/app_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eco Meter',
      initialBinding: AppBindings(),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      enableLog: true,
      defaultTransition: Transition.fade,
      logWriterCallback: AppLogger().localLogWriter,
    ),
  );
}
