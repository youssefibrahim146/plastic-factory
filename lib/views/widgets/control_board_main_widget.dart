import 'package:plastic_factory/constants/app_imports.dart';

class ControlBoardMainWidget extends StatelessWidget {
  final VoidCallback onClick;
  final String text;

  const ControlBoardMainWidget(this.text, {required this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 250.h,
        width: 437.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.appDarkGray,
          boxShadow: [
            BoxShadow(
              blurRadius: 10.sp,
              offset: Offset(1.sp, 1.sp),
            )
          ],
          borderRadius: BorderRadius.circular(30.sp),
          border: Border.all(
            color: AppColors.appWhite,
            width: 4.sp,
          ),
        ),
        child: Text(
          text,
          style: AppFonts.fontHeavy30Black.copyWith(
            color: AppColors.appWhite,
          ),
        ),
      ),
    );
  }
}
