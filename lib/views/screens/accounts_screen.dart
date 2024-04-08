import 'package:plastic_factory/constants/app_imports.dart';

class AccountsScreen extends GetWidget<AccountsController> {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.accountsArabicText,
        style: AppFonts.fontHeavy30Black,
      ),
    );
  }
}
