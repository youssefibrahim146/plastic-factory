import 'dart:io';

import 'package:plastic_factory/constants/app_imports.dart';

class HomeController extends GetxController {
  RxInt currentItem = RxInt(1);
  List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      1,
      name: AppStrings.controlBoardArabicText,
      child: const ControlBoardScreen(),
    ),
    DrawerItemModel(
      2,
      name: AppStrings.accountsArabicText,
      child: const AccountsScreen(),
    ),
    DrawerItemModel(
      3,
      name: AppStrings.salesArabicText,
      child: const SalesScreen(),
    ),
    DrawerItemModel(
      4,
      name: AppStrings.accountsArabicText,
      child: const AccountsScreen(),
    ),
    DrawerItemModel(
      5,
      name: AppStrings.customersArabicText,
      child: const CustomersScreen(),
    ),
    DrawerItemModel(
      6,
      name: AppStrings.suppliersArabicText,
      child: const SuppliersScreen(),
    ),
  ];

  void screenOnClick(int index) {
    currentItem.value = index;
  }

  void exitOnClick() {
    exit(0);
  }
}
