import 'package:flutter/material.dart';

import 'setting/theme_setting.dart';

final List<Map<String, Object>> settingList = [
  {
    'title': '外観モード',
    'icon': Icons.contrast,
    'view': const ThemeSetting(),
  },
];

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: settingList.length,
        itemBuilder: (context, index) {
          Map<String, Object> settingItem = settingList[index];
          return ListTile(
            leading: Icon(settingItem['icon'] as IconData),
            title: Text(settingItem['title'] as String),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).push<void>(
                MaterialPageRoute(
                  builder: (context) {
                    return settingItem['view'] as Widget;
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
