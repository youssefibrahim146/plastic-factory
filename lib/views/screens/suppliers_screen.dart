import 'package:plastic_factory/constants/app_imports.dart';

class SuppliersScreen extends GetWidget<SuppliersController> {
  const SuppliersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.suppliersArabicText,
        style: AppFonts.fontHeavy30Black,
      ),
    );
  }
}
