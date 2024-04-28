import 'package:student_onboarding_app/utils/common_exports.dart';

class AppTheme {
  ThemeData get appTheme => ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.deepPurple),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
      );
}
