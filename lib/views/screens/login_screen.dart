import 'package:plastic_factory/controllers/login_screen_controller.dart';
import 'package:plastic_factory/views/widgets/auth_row.dart';

import '../../constants/app_imports.dart';

class LoginScreen extends GetWidget<LoginScreenController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appLightGray,
      appBar: AppBar(
        backgroundColor: AppColors.appDarkGray,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const GapWidget(30),
              Image.asset(
                AppStrings.loginImage,
                width: 240.w,
                height: 240.h,
              ),
              const GapWidget(80),
              AuthRow(
                isObscure: false,
                label: AppStrings.userNameArabicText,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "من فضلك ادخل اسم المستخدم";
                  } else if (value != "1" && value != "2" && value != "3") {
                    return "اسم المستخدم خاطئ";
                  }
                  return null;
                },
              ),
              const GapWidget(105),
              AuthRow(
                isObscure: true,
                label: AppStrings.passwordArabicText,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "من فضلك ادخل كلمة المرور";
                  } else if (value != "12345") {
                    return "كلمة المرور خاطئة";
                  }
                  return null;
                },
              ),
              const GapWidget(80),
              ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.appDarkGray,
                  minimumSize: Size(435.w, 135.h),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: AppColors.appWhite,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(30.sp),
                  ),
                ),
                child: Text(
                  AppStrings.loginArabicText,
                  style: AppFonts.fontHeavy30Black
                      .copyWith(color: AppColors.appWhite, fontSize: 40.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
