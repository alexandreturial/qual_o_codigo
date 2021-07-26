import 'package:dark_theme/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn){
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes{
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryDark,
    colorScheme: ColorScheme.dark(),
    
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.purple,
      foregroundColor: Colors.white,
    ),

    toggleableActiveColor: AppColors.iconButton,
    
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: AppColors.iconButton
    ),

    iconTheme: IconThemeData(
      color: AppColors.iconButton
    )
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryLight,
    colorScheme: ColorScheme.light(),
    
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.purple,
      foregroundColor:  Colors.white,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.purple
    ),

    primaryColor: AppColors.purple,
    iconTheme: IconThemeData(
      color: AppColors.primaryLight
    )
  );
}