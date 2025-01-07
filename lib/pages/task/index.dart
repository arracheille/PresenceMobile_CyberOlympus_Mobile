import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_test/pages/components/navprofile.dart';
import 'package:project_test/pages/modal/createtask.dart';
import 'package:project_test/pages/modal/createtaskitem.dart';
import 'package:project_test/pages/workspace/index.dart';
import 'package:project_test/root/root.dart';

class BoardTask extends StatelessWidget {
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
              'Board Hehe',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'From Workspace Acwel',
              style: TextStyle(
                fontSize: 11,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 3),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5.0),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => IndexWorkspace()),
                  // );
                },
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        '>',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Back To Dashboard',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 300,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          gradient: gradient_blue(),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Task Tes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Created by Aqilla Rachel',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Color(0xff05162b),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Task Item Hehe',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            InkWell(
                                borderRadius: BorderRadius.circular(5.0),
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CreateTaskItem();
                                    },
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xff05162b),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '+ Add New Task Item',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        width: 300,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          gradient: gradient_blue(),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(5.0),
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CreateTask();
                                  },
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff05162b),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '+ Add New Task',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
