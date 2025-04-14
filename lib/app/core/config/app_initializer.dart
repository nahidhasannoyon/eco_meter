import 'package:eco_meter/app/core/constants/app_imports.dart';

Future<void> initializeApp() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
