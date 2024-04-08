import 'package:plastic_factory/constants/app_imports.dart';

class ControlBoardScreen extends GetWidget<ControlBoardController> {
  const ControlBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.controlBoardArabicText,
        style: AppFonts.fontHeavy30Black,
      ),
    );
  }
}
