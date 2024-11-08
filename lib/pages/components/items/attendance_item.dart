import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/pages/components/text/heading_4.dart';
import 'package:project_test/pages/components/text/text.dart';
import 'package:project_test/root/root.dart';

class AttendanceItem extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final String status;

  const AttendanceItem({
    Key? key,
    this.onPressed,
    required this.title,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEE, d MMM yyyy').format(now);
    String formattedTime = DateFormat('HH:mm').format(now);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: gradient_green(),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading4(
                text: title,
              ),
              Heading3(
                text: status,
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextP(
                text: '$formattedDate',
              ),
              TextP(
                text: '$formattedTime',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
