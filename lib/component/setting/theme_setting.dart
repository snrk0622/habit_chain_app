import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/theme_provider.dart';
import './common/setting_item_container.dart';

class ThemeSetting extends ConsumerWidget {
  const ThemeSetting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeAsyncValue = ref.watch(themeProvider);

    return themeModeAsyncValue.when(
      data: (currentTheme) => SettingItemContainer(
        title: '外観モード',
        icon: Icons.contrast,
        child: Column(
          children: ThemeMode.values.map((themeMode) {
            return RadioListTile<ThemeMode>(
              title: Text(themeMode.toString().split('.').last),
              value: themeMode,
              groupValue: currentTheme,
              onChanged: (ThemeMode? newTheme) {
                if (newTheme != null) {
                  ref.read(themeProvider.notifier).setThemeMode(newTheme);
                }
              },
            );
          }).toList(),
        ),
      ),
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}
