import 'package:plastic_factory/constants/app_imports.dart';

class CustomersScreen extends GetWidget<CustomersController> {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.customersArabicText,
        style: AppFonts.fontHeavy30Black,
      ),
    );
  }
}
