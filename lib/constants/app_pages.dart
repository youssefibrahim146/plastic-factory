import 'package:plastic_factory/constants/app_imports.dart';
import 'package:plastic_factory/views/screens/login_screen.dart';

class AppPages {
  static List<GetPage> appPages = [
    GetPage(
      name: AppStrings.totalDebtsOfEachClientRoute,
      page: () => const TotalDebtsOfEachClientScreen(),
      transition: Transition.noTransition,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.detailsOfDebtsRoute,
      page: () => const DetailsOfDebtsScreen(),
      transition: Transition.noTransition,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.supplyOfDebtsRoute,
      page: () => const SupplyOfDebtsScreen(),
      transition: Transition.noTransition,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.newSaleRoute,
      page: () => const NewSaleScreen(),
      transition: Transition.noTransition,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.homeRoute,
      page: () => const HomeScreen(),
      transition: Transition.noTransition,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.loginRoute,
      page: () => const LoginScreen(),
    ),
  ];
}
