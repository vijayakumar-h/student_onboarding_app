import 'package:student_onboarding_app/utils/common_exports.dart';

class PrimaryButton extends StatelessWidget {
  final Color? color;
  final String title;
  final bool isExpanded;
  final double? fontSize;
  final void Function()? onTap;

  const PrimaryButton({
    super.key,
    this.color,
    this.onTap,
    this.fontSize,
    required this.title,
    this.isExpanded = false,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: isExpanded ? double.infinity : null,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(width: 2, color: Colors.transparent),
            ),
          ),
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSize ?? 18,
              color: color ?? Colors.white,
            ),
          ),
        ),
      );
}
