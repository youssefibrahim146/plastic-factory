import 'package:plastic_factory/constants/app_imports.dart';
import 'package:plastic_factory/views/widgets/control_board_main_widget.dart';

class ControlBoardScreen extends GetWidget<ControlBoardController> {
  const ControlBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Text(
            AppStrings.amrTradingInPlasticsArabicText,
            style: AppFonts.fontHeavy30Black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ControlBoardMainWidget(
              AppStrings.newSaleArabicText,
              onClick: () => controller.itemOnClick(AppStrings.newSaleRoute),
            ),
            const GapWidget(100),
            ControlBoardMainWidget(
              AppStrings.totalDebtsOfEachClientArabicText,
              onClick: () => controller.itemOnClick(AppStrings.totalDebtsOfEachClientRoute),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ControlBoardMainWidget(
              AppStrings.supplyOfDebtsArabicText,
              onClick: () => controller.itemOnClick(AppStrings.supplyOfDebtsRoute),
            ),
            const GapWidget(100),
            ControlBoardMainWidget(
              AppStrings.detailsOfDebtsArabicText,
              onClick: () => controller.itemOnClick(AppStrings.detailsOfDebtsRoute),
            ),
          ],
        ),
        Container(
          height: 98.h,
          width: 636.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.appDarkGray,
            borderRadius: BorderRadius.circular(30.sp),
            border: Border.all(
              color: AppColors.appWhite,
              width: 4.sp,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppStrings.totalCustomerReceivablesArabicText + AppStrings.colonSign,
                style: AppFonts.fontHeavy30Black.copyWith(
                  color: AppColors.appWhite,
                ),
              ),
              Row(
                children: [
                  Text(
                    AppStrings.egpEnglishText + AppStrings.spaceSign,
                    style: AppFonts.fontHeavy30Black.copyWith(
                      color: AppColors.appWhite,
                    ),
                  ),
                  Text(
                    "230,000",
                    style: AppFonts.fontHeavy30Black.copyWith(
                      color: AppColors.appWhite,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
