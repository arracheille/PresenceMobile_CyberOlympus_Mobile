import 'package:flutter/material.dart';
import 'package:project_test/pages/attendance/list.dart';
import 'package:project_test/pages/components/items/attendance_item.dart';
import 'package:project_test/pages/components/items/records_item.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/pages/components/text/heading_4.dart';
import 'package:project_test/pages/components/text/text_small_10.dart';
import 'package:project_test/root/root.dart';

class AttendanceRecordsShow extends StatelessWidget {
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

  const AttendanceRecordsShow({
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
            Container(
              width: 70.0,
              height: 80.0,
              decoration: BoxDecoration(
                gradient: gradient_green(),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Heading4(
                          text: 'Present',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Heading3(text: present),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 70.0,
              height: 80.0,
              decoration: BoxDecoration(
                gradient: gradient_blue(),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Heading4(
                          text: 'Sick',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_hospital,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Heading3(
                              text: sick,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 70.0,
              height: 80.0,
              decoration: BoxDecoration(
                gradient: gradient_orange(),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Heading4(
                          text: 'Absent',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.exit_to_app,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Heading3(
                              text: absent,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 70.0,
              height: 80.0,
              decoration: BoxDecoration(
                gradient: gradient_red(),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Heading4(
                          text: 'Late',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.warning,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Heading3(
                              text: late,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
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
        Row(
          children: [
            Heading3(text: 'Recent Attendances'),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: blue(),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(5.0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AttendanceList()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    child: TextSmall(text: 'Show All'),
                  ),
                ),
              ),
            ),
          ],
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
