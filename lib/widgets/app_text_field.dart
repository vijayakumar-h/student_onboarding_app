import 'package:student_onboarding_app/utils/common_exports.dart';

class AppTextField extends StatelessWidget {
  final String? titleText;
  final String? placeHolder;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const AppTextField(
      {super.key,
      this.titleText,
      this.placeHolder,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          if (titleText != null) ...{Text(titleText!)},
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red.withOpacity(0.3),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              hintText: placeHolder,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
        ],
      );
}
