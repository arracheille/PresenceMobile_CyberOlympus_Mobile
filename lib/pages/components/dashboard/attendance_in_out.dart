import 'package:flutter/material.dart';
import 'package:project_test/pages/components/items/in_out_item.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/pages/components/text/text.dart';
import 'package:project_test/pages/main/index.dart';
import 'package:project_test/root/root.dart';

class AttendanceInOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IndexDashboard()),
              );
            },
            child: Container(
              child: Row(
                children: [
                  Heading3(text: '>'),
                  SizedBox(width: 3),
                  TextP(text: 'Back To Dashboard'),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 3),
        Heading3(text: 'Acwel Workspace'),
        SizedBox(height: 10),
        Row(
          children: [
            InOutItem(
              title: 'Check-In',
              min: 'Min: 08:00',
              status: 'Present',
              at: '00-00-00',
              gradient: gradient_green(),
            ),
            SizedBox(width: 20),
            InOutItem(
              title: 'Check-Out',
              min: 'Min: 17:00',
              status: 'Not Yet',
              at: '00-00-00',
              gradient: gradient_red(),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            InOutItem(
              title: 'Break-In',
              min: 'Min: 12:00',
              status: 'Not Yet',
              at: '00-00-00',
              gradient: gradient_green(),
            ),
            SizedBox(width: 20),
            InOutItem(
              title: 'Break-Out',
              min: 'Max: 13:00',
              status: 'Not Yet',
              at: '00-00-00',
              gradient: gradient_red(),
            ),
          ],
        ),
      ],
    );
  }
}
