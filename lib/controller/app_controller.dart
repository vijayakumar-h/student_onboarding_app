import 'package:flutter/cupertino.dart';

class AppController with AppMixin {
  AppController._internal();

  factory AppController() => _singleton;
  static final AppController _singleton = AppController._internal();
}

mixin AppMixin {
  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);
}
