import 'package:flutter/material.dart';
import 'package:project_test/pages/components/dashboard/index_attendance_records.dart';
import 'package:project_test/pages/components/dashboard/attendance_in_out.dart';
import 'package:project_test/pages/components/navprofile.dart';
import 'package:intl/intl.dart';
import 'package:project_test/root/root.dart';

class Attendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEE, d MMM yyyy').format(now);
    String formattedTime = DateFormat('HH:mm').format(now);
    return Scaffold(
      backgroundColor: Color(0xff05162b),
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
            AttendanceInOut(),
            SizedBox(height: 20),
            AttendanceRecordsShow(
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
          ],
        ),
      ),
    );
  }
}
