import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_test/pages/attendance/index.dart';
import 'package:project_test/pages/board/index.dart';
import 'package:project_test/pages/schedule/index.dart';
import 'package:project_test/pages/workspace/dashboard.dart';
import 'package:project_test/pages/workspace/settings.dart';

class IndexWorkspace extends StatefulWidget {
  final int id;
  const IndexWorkspace({Key? key, required this.id}) : super(key: key);

  @override
  State<IndexWorkspace> createState() => _IndexWorkspaceState();
}

class _IndexWorkspaceState extends State<IndexWorkspace> {
  int _currentIndex = 0;
  List<Widget> body = [
    DashboardWorkspace(),
    Schedule(),
    Board(),
    Attendance(),
    WorkspaceSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    print(widget.id);
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
            label: 'Home',
            icon: Icon(Iconsax.home),
          ),
          BottomNavigationBarItem(
            label: 'Schedule',
            icon: Icon(Iconsax.calendar5),
          ),
          BottomNavigationBarItem(
            label: 'Board',
            icon: Icon(Iconsax.task_square5),
          ),
          BottomNavigationBarItem(
            label: 'Attendance',
            icon: Icon(Iconsax.profile_add),
          ),
          BottomNavigationBarItem(
            label: 'Details',
            icon: Icon(Iconsax.setting),
          ),
        ],
      ),
    );
  }
}
