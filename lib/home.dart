import 'package:student_onboarding_app/utils/common_exports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      bottomNavigationBar: const BottomNavigationBarItemWidget(),
      body: const Column(
        children: [],
      ),
    );
  }
}

class BottomNavigationBarItemWidget extends StatelessWidget {
  const BottomNavigationBarItemWidget({super.key});

  static Widget _returnBottomNavIcon(String icon,
          {Color? color, IconData? iconData, double? width}) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: iconData != null
            ? Icon(iconData, size: 20, color: color)
            : SvgPicture.string(
                icon,
                height: width ?? 20,
                color: color,
              ),
      );

  // static Widget _returnBottomNavIconIos(String icon, BuildContext context,{Color? color, IconData? iconData, double? widtht }) {}

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined), label: "Calendar"),
        BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange_outlined), label: "Currency"),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_added_sharp), label: "bookMark"),
      ],
    );
  }
}
