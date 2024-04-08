import 'package:plastic_factory/constants/app_imports.dart';

class DrawerItemModel {
  int num;
  String name;
  Widget child;

  DrawerItemModel(
    this.num, {
    required this.name,
    required this.child,
  });
}
