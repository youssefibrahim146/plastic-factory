import 'package:plastic_factory/constants/app_imports.dart';

class SalesScreen extends GetWidget<SalesController> {
  const SalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.salesArabicText,
        style: AppFonts.fontHeavy30Black,
      ),
    );
  }
}
