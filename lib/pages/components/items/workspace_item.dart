import 'package:flutter/material.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/pages/components/text/heading_5.dart';
import 'package:project_test/pages/components/text/text_small_10.dart';
import 'package:project_test/pages/workspace/index.dart';
import 'package:project_test/root/root.dart';

class WorkspaceItem extends StatelessWidget {
  final String title;
  final String created_by;
  final String workspace_type;
  final String workspace_desc;

  const WorkspaceItem({
    Key? key,
    required this.title,
    required this.created_by,
    required this.workspace_type,
    required this.workspace_desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> words = title.split(' ');

    String result;
    if (words.length == 1) {
      result = words[0].substring(0, 2);
    } else {
      result = words[0][0] + words[1][0];
    }
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => IndexWorkspace()),
        // );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: blue(),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: signature(),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(child: Heading3(text: result.toUpperCase())),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading3(text: title),
                    TextSmall(
                      text: 'Created by: $created_by'
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: gradient_blue()
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(5.0),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: TextSmall(
                          text: 'Share,'
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Heading5(
              text: workspace_type,
            ),
            SizedBox(height: 3),
            Heading5(
              text: workspace_desc,
            ),
          ],
        ),
      ),
    );
  }
}
