import 'package:eco_meter/app/core/constants/app_imports.dart';

class ResultRoutes {
  ResultRoutes._();

  static const result = '/result';

  static final routes = [
    GetPage(
      name: result,
      page: () => const ResultPage(),
      binding: ResultBinding(),
    ),
  ];
}