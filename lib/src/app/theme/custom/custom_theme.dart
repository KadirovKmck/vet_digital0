import 'package:flutter/material.dart';
import 'package:vet_digital/src/app/theme/theme.dart';

class AppTheme with ComponentTheme {
  const AppTheme();

  ColorScheme colors(Brightness brightness) {
    return ColorScheme.fromSeed(
      seedColor: AppColors.mainColor,
      secondary: AppColors.white,
      brightness: brightness,
    );
  }

  ThemeData light([Color? targetColor]) {
    final scheme = colors(Brightness.light);
    return ThemeData.light().copyWith(
      colorScheme: scheme,
      appBarTheme: appBarTheme(scheme),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(scheme),
      bottomAppBarTheme: bottomAppBarTheme(scheme),
      bottomNavigationBarTheme: bottomNavigationBarTheme(scheme),
      tabBarTheme: tabBarTheme(scheme),
      buttonTheme: buttonTheme(scheme),
      inputDecorationTheme: inputDecorationTheme(scheme),
      elevatedButtonTheme: elevatedButtonThemeData(scheme),
      useMaterial3: true,
    );
  }

  ThemeData dark([Color? targetColor]) {
    final scheme = colors(Brightness.dark);
    return ThemeData.dark().copyWith(
      colorScheme: scheme,
      appBarTheme: appBarTheme(scheme),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(scheme),
      bottomAppBarTheme: bottomAppBarTheme(scheme),
      bottomNavigationBarTheme: bottomNavigationBarTheme(scheme),
      tabBarTheme: tabBarTheme(scheme),
      buttonTheme: buttonTheme(scheme),
      inputDecorationTheme: inputDecorationTheme(scheme),
      elevatedButtonTheme: elevatedButtonThemeData(scheme),
      useMaterial3: true,
    );
  }

  // AppTheme copy([Color? newColor]) => AppTheme(newColor ?? color);
}
