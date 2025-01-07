import 'package:flutter/material.dart';
import 'package:project_test/pages/components/buttons/button_gradient.dart';
import 'package:project_test/pages/components/inputs/text.dart';
import 'package:project_test/pages/components/text/heading_1.dart';
import 'package:project_test/root/root.dart';

class JoinWorkspace extends StatefulWidget {
  @override
  _JoinWorkspaceState createState() => _JoinWorkspaceState();
}

class _JoinWorkspaceState extends State<JoinWorkspace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff163155),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading1(
                text: 'Create New Workspace',
              ),
              SizedBox(height: 20),
              InputText(
                label: 'Unique Code',
              ),
              BtnFullGradient(
                text: 'Join',
                gradient: gradient_blue(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
