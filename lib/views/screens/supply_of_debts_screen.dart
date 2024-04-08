import 'package:plastic_factory/constants/app_imports.dart';

class SupplyOfDebtsScreen extends GetWidget<SupplyOfDebtsController> {
  const SupplyOfDebtsScreen({super.key});

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
          AppStrings.supplyOfDebtsArabicText,
          style: AppFonts.fontHeavy30Black,
        ),
      ),
    );
  }
}
