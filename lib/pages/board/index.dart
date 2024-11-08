import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_test/pages/components/items/board_item.dart';
import 'package:project_test/pages/components/buttons/button_gradient.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/pages/components/text/text.dart';
import 'package:project_test/pages/modal/createboard.dart';
import 'package:project_test/pages/task/index.dart';
import 'package:project_test/root/root.dart';
import 'package:project_test/pages/components/navprofile.dart';

class Board extends StatelessWidget {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading3(
                  text: 'Workspace Boards'
                ),
                SizedBox(height: 3),
                TextP(
                  text: 'From Workspace Acwel',
                ),
                SizedBox(height: 10),
                BoardItem(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BoardTask()),
                    );
                  },
                  title: 'Board name',
                  gradient: gradient_purple(),
                ),
                SizedBox(height: 10),
                BtnFullGradient(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return CreateBoard();
                      },
                    );
                  },
                  text: '+ Add New Board',
                  gradient: gradient_blue(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
