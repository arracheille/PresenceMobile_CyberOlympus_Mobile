import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_test/pages/components/navprofile.dart';

class Archived extends StatelessWidget {
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
          ],
        ),
      ),
    );
  }
}
