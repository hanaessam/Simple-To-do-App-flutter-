import 'package:flutter/material.dart';
import 'package:to_do_app_task/screens/settings.dart';
import 'package:to_do_app_task/screens/task_page.dart';

import 'calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    Calendar(),
    TaskPage(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.calendar_today_outlined),
              backgroundColor: Colors.teal.shade900,
              label: 'Calendar',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.task),
                backgroundColor: Colors.teal,
                label: 'Tasks'),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                backgroundColor: Colors.teal.shade200,
                label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
