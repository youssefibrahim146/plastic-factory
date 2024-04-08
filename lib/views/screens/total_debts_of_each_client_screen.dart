import 'package:plastic_factory/constants/app_imports.dart';

class TotalDebtsOfEachClientScreen extends GetWidget<TotalDebtsOfEachClientController> {
  const TotalDebtsOfEachClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appLightGray,
      appBar: AppBar(
        backgroundColor: AppColors.appTransparent,
        leading: const BackButton(),
      ),
      body: Center(
        child: Text(
          AppStrings.totalDebtsOfEachClientArabicText,
          style: AppFonts.fontHeavy30Black,
        ),
      ),
    );
  }
}
