import 'package:flutter/material.dart';
import 'package:project_test/pages/components/items/board_item.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/root/root.dart';
import 'package:project_test/pages/task/index.dart';

class RecentBoards extends StatelessWidget {
  final String board_title;

  const RecentBoards({
    Key? key,
    required this.board_title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading3(
          text: 'Recent Boards',
        ),
        SizedBox(height: 10),
        BoardItem(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BoardTask()),
            );
          },
          title: board_title,
          gradient: gradient_purple(),
        )
      ],
    );
  }
}
