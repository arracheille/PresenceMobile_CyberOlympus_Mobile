import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_test/pages/components/dashboard/attendance_records.dart';
import 'package:project_test/pages/components/dashboard/recent_boards.dart';
import 'package:project_test/pages/components/dashboard/recent_workspace.dart';
import 'package:project_test/pages/components/navprofile.dart';
import 'package:project_test/root/root.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEE, d MMM yyyy').format(now);
    String formattedTime = DateFormat('HH:mm').format(now);
    return Scaffold(
      backgroundColor: darkblue(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Navbar(
              userName: 'Aqilla Rachel',
              formattedDate: formattedDate,
              formattedTime: formattedTime,
            ),
            SizedBox(height: 20),
            RecentWorkspace(),
            SizedBox(height: 20),
            AttendanceRecords(
              present: '00',
              sick: '00',
              absent: '00',
              late: '00',
              title: 'Workspace Acwel',
              status: 'Present',
              latecount: '00',
              sickcount: '00',
              absentcount: '00',
              presentcount: '00',
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
              height: 31,
            ),
            RecentBoards(
              board_title: 'Board Title',
            )
          ],
        ),
      ),
    );
  }
}
