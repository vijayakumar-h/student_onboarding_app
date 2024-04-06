import 'package:student_onboarding_app/utils/common_exports.dart';

void main() {
  runApp(const StudentOnBoardingApp());
}

class StudentOnBoardingApp extends StatelessWidget {
  const StudentOnBoardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialAppResourceScreen(),
    );
  }
}
