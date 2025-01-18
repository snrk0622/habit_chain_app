import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'provider/theme_provider.dart';
import 'constant/color_constant.dart';
import 'component/layout/layout_with_bottom_navigation_bar.dart';

final ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: ColorConstant.primaryColor,
    onPrimary: ColorConstant.surfaceColorForLight,
    secondary: ColorConstant.secondaryColor,
    onSecondary: ColorConstant.surfaceColorForLight,
    error: ColorConstant.errorColor,
    onError: ColorConstant.surfaceColorForLight,
    surface: ColorConstant.surfaceColorForLight,
    onSurface: ColorConstant.onSurfaceColorForLight,
  ),
  useMaterial3: true,
);

final ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: ColorConstant.primaryColor,
    onPrimary: ColorConstant.surfaceColorForLight,
    secondary: ColorConstant.secondaryColor,
    onSecondary: ColorConstant.surfaceColorForLight,
    error: ColorConstant.errorColor,
    onError: ColorConstant.surfaceColorForLight,
    surface: ColorConstant.surfaceColorForDark,
    onSurface: ColorConstant.surfaceColorForLight,
  ),
  useMaterial3: true,
);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Habit Chain',
      theme: _lightTheme,
      darkTheme: _darkTheme,
      themeMode: ref.watch(themeProvider),
      home: const LayoutWithBottomNavigationBar(),
    );
  }
}
