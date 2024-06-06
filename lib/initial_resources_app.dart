import 'package:student_onboarding_app/utils/common_exports.dart';

class InitialResourceApp extends StatefulWidget {
  const InitialResourceApp({super.key});

  @override
  State<InitialResourceApp> createState() => _InitialResourceAppState();
}

class _InitialResourceAppState extends State<InitialResourceApp> {
  // @override
  // void initState() {
  //   super.initState();
  //   context.pushAndRemoveUntil(const Home());
  // }

  @override
  Widget build(BuildContext context) {
    return const HomeDrawer();
  }
}
