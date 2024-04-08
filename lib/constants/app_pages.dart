import 'package:plastic_factory/constants/app_imports.dart';
import 'package:plastic_factory/constants/app_strings.dart';
import 'package:plastic_factory/views/screens/home_screen.dart';

class AppPages {
  static List<GetPage> appPages = [
    GetPage(
      name: AppStrings.homeRoute,
      page: () => const HomeScreen(),
    ),
  ];
}
