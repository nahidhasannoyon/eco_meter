import 'package:eco_meter/app/core/constants/app_imports.dart';

class AddRoutes {
  AddRoutes._();

  static const add = '/add';

  static final routes = [
    GetPage(
      name: add,
      page: () => const AddPage(),
      binding: AddBinding(),
    ),
  ];
}