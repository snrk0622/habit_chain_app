import 'package:flutter/material.dart';

import 'component/layout/layout_with_bottom_navigation_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Chain',
      theme: ThemeData(
        primaryColor: Colors.green,
        useMaterial3: true,
      ),
      home: const LayoutWithBottomNavigationBar(),
    );
  }
}

