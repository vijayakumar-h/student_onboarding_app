import 'package:student_onboarding_app/utils/common_exports.dart';

class SecondaryButton extends StatelessWidget {
  final Color? color;
  final String title;
  final double? fontSize;
  final bool isExpanded;
  final void Function()? onTap;

  const SecondaryButton({
    super.key,
    this.onTap,
    this.color,
    this.fontSize,
    required this.title,
    this.isExpanded = false,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: isExpanded ? double.infinity : null,
        child: OutlinedButton(
          onPressed: onTap,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(width: 2, color: Colors.transparent),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSize ?? 18,
              color: color ?? Colors.black,
            ),
          ),
        ),
      );
}
