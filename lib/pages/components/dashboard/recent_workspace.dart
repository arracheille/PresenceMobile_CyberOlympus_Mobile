import 'package:flutter/material.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/pages/components/items/workspace_item.dart';

class RecentWorkspace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading3(
          text: 'Recent Workspaces',
        ),
        SizedBox(height: 10),
        WorkspaceItem(
          title: 'Title',
          created_by: 'Aqilla Rachel',
          workspace_type: 'Personal Workspace',
          workspace_desc:
              'Lorem ipsum dolor sit amet consectetur. Morbi est sed euismod vitae non risus diam non hendrerit.',
        )
      ],
    );
  }
}
