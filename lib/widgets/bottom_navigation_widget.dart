import 'package:student_onboarding_app/utils/common_exports.dart';

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
  Widget build(BuildContext context) => ValueListenableBuilder(
      valueListenable: appController.currentIndex,
      builder: (_, currentIndexValue, __) => BottomNavigationBar(
            currentIndex: currentIndexValue,
            type: BottomNavigationBarType.fixed,
            onTap: (value) => appController.currentIndex.value = value,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Person"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_outlined), label: "Calendar"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.currency_exchange_outlined),
                  label: "Currency"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_added_sharp), label: "bookMark"),
            ],
          ));
}
