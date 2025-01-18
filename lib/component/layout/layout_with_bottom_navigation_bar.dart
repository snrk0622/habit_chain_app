import 'package:flutter/material.dart';

import '../../view/home_view.dart';
import '../../view/setting_view.dart';
import '../../constant/app_constant.dart';

class LayoutWithBottomNavigationBar extends StatefulWidget {
  const LayoutWithBottomNavigationBar({super.key});

  @override
  State<LayoutWithBottomNavigationBar> createState() => LayoutWithBottomNavigationBarState();
}

class LayoutWithBottomNavigationBarState extends State<LayoutWithBottomNavigationBar> {
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    SettingPage(),
  ];

  int _selectedIndex = 0;

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstant.title),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTapItem,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: 'アカウント',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        enableFeedback: true,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedItemColor: Theme.of(context).colorScheme.onSurface,
        showUnselectedLabels: false,
      ),
    );
  }
}