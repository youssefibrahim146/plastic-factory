import 'package:plastic_factory/constants/app_imports.dart';

class ControlBoardController extends GetxController {
  void itemOnClick(String route, {dynamic arguments}) {
    Get.toNamed(route, arguments: arguments);
  }
}
