import 'package:plastic_factory/constants/app_imports.dart';

class NewSaleScreen extends GetWidget<NewSaleController> {
  const NewSaleScreen({super.key});

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
          AppStrings.newSaleArabicText,
          style: AppFonts.fontHeavy30Black,
        ),
      ),
    );
  }
}
