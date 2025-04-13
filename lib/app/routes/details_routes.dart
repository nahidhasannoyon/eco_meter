import 'package:eco_meter/app/core/constants/app_imports.dart';

class DetailsRoutes {
  DetailsRoutes._();

  static const details = '/details';

  static final routes = [
    GetPage(
      name: details,
      page: () => const DetailsPage(),
      binding: DetailsBinding(),
    ),
  ];
}