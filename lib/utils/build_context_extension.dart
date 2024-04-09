import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// NAVIGATION METHODS
extension StudentOnboardNavigationBuildContextExtensions on BuildContext {
  void pop() => Navigator.of(this).pop();

  void mayBePop() async => await Navigator.of(this).maybePop();

  Future<void> push(Widget child) async =>
      Navigator.push(this, appPageRoute((_) => child));

  Future<void> pushNamed(String routeName, {Object? arguments}) =>
      Navigator.pushNamed(this, routeName, arguments: arguments);

  void popAndPushNamed(String routeName, {Object? arguments}) =>
      Navigator.popAndPushNamed(this, routeName, arguments: arguments);

  Future<void> pushAndRemoveUntil(Widget child) => Navigator.pushAndRemoveUntil(
      this, appPageRoute((_) => child), (route) => false);

  Future<void> pushReplacement(Widget child) =>
      Navigator.pushReplacement(this, appPageRoute((_) => child));

  Future<void> pushNamedAndRemoveUntil(String newRouteName,
          {Object? arguments}) =>
      Navigator.pushNamedAndRemoveUntil(this, newRouteName, (route) => false,
          arguments: arguments);

  void pushReplacementNamed(String routeName, {Object? arguments}) =>
      Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
}

extension BuildContextExtension on BuildContext {
  bool get isIOS => true;

  bool get isAndroid => false;

  Route<dynamic> appPageRoute(Widget Function(BuildContext) route) => isIOS
      ? CupertinoPageRoute(builder: route)
      : MaterialPageRoute(builder: route);
}
