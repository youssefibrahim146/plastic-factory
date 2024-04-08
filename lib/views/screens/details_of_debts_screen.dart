import 'package:plastic_factory/constants/app_imports.dart';

class DetailsOfDebtsScreen extends GetWidget<DetailsOfDebtsController> {
  const DetailsOfDebtsScreen({super.key});

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
          AppStrings.detailsOfDebtsArabicText,
          style: AppFonts.fontHeavy30Black,
        ),
      ),
    );
  }
}
