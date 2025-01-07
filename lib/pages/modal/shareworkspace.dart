import 'package:flutter/material.dart';
import 'package:project_test/pages/components/buttons/button_gradient.dart';
import 'package:project_test/pages/components/inputs/text.dart';
import 'package:project_test/pages/components/text/heading_1.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/root/root.dart';

class ShareWorkspace extends StatefulWidget {
  @override
  _ShareWorkspaceState createState() => _ShareWorkspaceState();
}

class _ShareWorkspaceState extends State<ShareWorkspace> {
  int? _selectedValue; // Untuk menyimpan nilai radio yang terpilih

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
                text: 'Join Workspace',
              ),
              SizedBox(height: 20),
              Heading3(
                text: 'Workspace Unique Code:',
              ),
              SizedBox(height: 10),
              InputText(
                label: 'Workspace Unique Code',
              ),
              SizedBox(height: 20),
              Heading3(
                text: 'Or Invite User From Email',
              ),
              SizedBox(height: 10),
              InputText(
                label: 'Example: acwel@gmail.com',
              ),
              SizedBox(height: 20),
              BtnFullGradient(
                text: 'Send',
                gradient: gradient_blue(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
