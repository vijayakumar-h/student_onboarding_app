
import 'package:student_onboarding_app/utils/common_exports.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) => Material(
        child: Scaffold(
          bottomNavigationBar: const BottomNavigationBarItemWidget(),
          body: ValueListenableBuilder(
            valueListenable: appController.currentIndex,
            builder: (context, index, __) => [
              Home(),
              Person(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
            ][index],
          ),
        ),
      );
}
