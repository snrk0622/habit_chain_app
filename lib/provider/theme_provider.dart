import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_provider.g.dart';

const String themeModeKey = 'theme_mode';

@riverpod
class Theme extends _$Theme {
  @override
  FutureOr<ThemeMode> build() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final themeModeString = sharedPreferences.getString(themeModeKey);
    if (themeModeString != null) {
      return ThemeMode.values.firstWhere((mode) => mode.toString() == themeModeString, orElse: () => ThemeMode.system);
    }
    return ThemeMode.system;
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(themeModeKey, themeMode.toString());
    state = AsyncValue.data(themeMode);
  }
}