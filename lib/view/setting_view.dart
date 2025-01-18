import 'package:flutter/material.dart';

import '../component/setting/theme_setting.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const ThemeSetting(),
        ],
      ),
    );
  }
}
