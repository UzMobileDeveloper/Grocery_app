import 'package:flutter/cupertino.dart';
import 'package:grocery_app/services/dark_theme_prefrence.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePrefrence darkThemePrefrence = DarkThemePrefrence();
  bool _darkTheme = false;

  bool get getDarkTheme => _darkTheme;

  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePrefrence.setDarkTheme(value);
    notifyListeners();
  }
}
