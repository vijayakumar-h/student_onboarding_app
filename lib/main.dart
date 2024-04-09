import 'package:student_onboarding_app/utils/common_exports.dart';

void main() {
  runApp(const StudentOnboardApp());
}

class StudentOnboardApp extends StatelessWidget {
  const StudentOnboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialResourceApp(),
    );
  }
}
