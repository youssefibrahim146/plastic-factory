import 'package:plastic_factory/constants/app_imports.dart';

class AppPages {
  static List<GetPage> appPages = [
    GetPage(
      name: AppStrings.homeRoute,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppStrings.loginRoute,
      page: () => const LoginScreen(),
    ),
  ];
}
