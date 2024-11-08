import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_test/pages/components/map_page.dart';
import 'package:project_test/pages/workspace/index.dart';
import 'package:project_test/root/root.dart';
import 'package:project_test/pages/components/navprofile.dart';

class LocationDetails extends StatelessWidget {
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
            Text(
              'Edit Location',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 400,
              child: MapPage(),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Color(0xff05162b),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Location Name',
                  labelStyle: TextStyle(fontSize: 13.0, color: Colors.white),
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Color(0xff05162b),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Road Name',
                  labelStyle: TextStyle(fontSize: 13.0, color: Colors.white),
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white),
                maxLines: 3,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Color(0xff05162b),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Allow Presence Iin: (Meters)',
                  labelStyle: TextStyle(fontSize: 13.0, color: Colors.white),
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                gradient: gradient_blue(),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IndexWorkspace()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: Text(
                  'Set Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
