import 'package:flutter/material.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/pages/components/text/heading_4.dart';

class RecordsItem extends StatelessWidget {
  final String title;
  final String count;
  final IconData icon;
  final Gradient gradient;

  const RecordsItem({
    Key? key,
    required this.title,
    required this.count,
    required this.icon,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 80.0,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Heading4(
                  text: title,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      // Icons.warning
                      icon,
                      size: 16.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Heading3(
                      text: count,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
