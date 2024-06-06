import 'package:student_onboarding_app/utils/common_exports.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Person"),
      ),
      body: const Column(
        children: [
          Text("data"),
        ],
      ),
    );
  }
}
