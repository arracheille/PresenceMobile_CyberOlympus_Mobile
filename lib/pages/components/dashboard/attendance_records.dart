import 'package:flutter/material.dart';
import 'package:project_test/pages/components/items/attendance_item.dart';
import 'package:project_test/pages/components/items/records_item.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/root/root.dart';

class AttendanceRecords extends StatelessWidget {
  final String present;
  final String sick;
  final String absent;
  final String late;
  final String title;
  final String status;
  final String latecount;
  final String sickcount;
  final String absentcount;
  final String presentcount;

  const AttendanceRecords({
    Key? key,
    required this.present,
    required this.sick,
    required this.absent,
    required this.late,
    required this.title,
    required this.status,
    required this.latecount,
    required this.sickcount,
    required this.absentcount,
    required this.presentcount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading3(
          text: 'Attendance Records',
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RecordsItem(
              title: 'Present',
              count: presentcount,
              icon: Icons.check,
              gradient: gradient_green(),
            ),
            RecordsItem(
              title: 'Sick',
              count: sickcount,
              icon: Icons.local_hospital,
              gradient: gradient_blue(),
            ),
            RecordsItem(
              title: 'Absent',
              count: absentcount,
              icon: Icons.exit_to_app,
              gradient: gradient_red(),
            ),
            RecordsItem(
              title: 'Late',
              count: latecount,
              icon: Icons.warning,
              gradient: gradient_orange(),
            ),
          ],
        ),
        Divider(
          color: Colors.white,
          thickness: 1,
          height: 31,
        ),
        Heading3(
          text: 'Recent Attendances',
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [AttendanceItem(title: title, status: status)],
        ),
      ],
    );
  }
}
