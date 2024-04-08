import '../../constants/app_imports.dart';

class AuthRow extends StatelessWidget {
  final bool isObscure;
  final String label;
  final String? Function(String?)? validator;

  const AuthRow({
    super.key,
    required this.isObscure,
    required this.label,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 690.w,
          child: TextFormField(
            validator: validator,
            textAlign: TextAlign.center,
            obscureText: isObscure,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.appWhite,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: AppColors.appTransparent,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: AppColors.appTransparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: AppColors.appTransparent,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: AppColors.appTransparent,
                ),
              ),
            ),
          ),
        ),
        const GapWidget(50),
        Text(
          label,
          style: AppFonts.fontHeavy30Black,
        ),
      ],
    );
  }
}
