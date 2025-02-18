import 'package:firebase_notification/utils/common_exports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: const Column(
        children: [
          Text("data"),
        ],
      ),
    );
  }
}
