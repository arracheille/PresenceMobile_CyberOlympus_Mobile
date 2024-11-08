import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_test/pages/main/dashboard.dart';
import 'package:project_test/pages/main/settings.dart';
import 'package:project_test/pages/workspace/list.dart';

class IndexDashboard extends StatefulWidget {
  const IndexDashboard({Key? key}) : super(key: key);

  @override
  State<IndexDashboard> createState() => _IndexDashboardState();
}

class _IndexDashboardState extends State<IndexDashboard> {
  int _currentIndex = 0;
  List<Widget> body = [
    Dashboard(),
    WorkspaceList(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        backgroundColor: Color(0xff163155),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        iconSize: 14,
        items: const [
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(Iconsax.home),
          ),
          BottomNavigationBarItem(
            label: 'Workspaces',
            icon: Icon(Iconsax.keyboard),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Iconsax.setting),
          ),
        ],
      ),
    );
  }
}
