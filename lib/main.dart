import 'package:flutter/material.dart';
import 'package:grocery_app/consts/theme_data.dart';
import 'package:grocery_app/provider/dark_theme_provider.dart';
import 'package:grocery_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  DarkThemeProvider themeChangProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangProvider.setDarkTheme = await themeChangProvider.darkThemePrefrence.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    bool _isDark = false;
    return MultiProvider(
      providers: [],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: Style.themeData(_isDark, context),
          home: HomeScreen()),
    );
  }
}
