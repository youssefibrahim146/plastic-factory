import '../constants/app_imports.dart';

class LoginScreenController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validatepassword() {
    // Validate login
  }

  void login() {
    if (formKey.currentState!.validate()) {
      Get.offNamed(AppStrings.homeRoute);
    }
  }
}
