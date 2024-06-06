import 'package:student_onboarding_app/utils/common_exports.dart';

class AppTheme {
  ThemeData get appTheme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.deepPurple),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 1.5,
          backgroundColor: Colors.white,
        ),
      );
}
