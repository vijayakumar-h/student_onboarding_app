import 'package:student_onboarding_app/utils/common_exports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Column(
        children: [Text("data")],
      ),
    );
  }
}
