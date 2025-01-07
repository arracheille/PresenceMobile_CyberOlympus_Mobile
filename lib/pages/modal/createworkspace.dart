import 'package:flutter/material.dart';
import 'package:project_test/pages/components/buttons/button_gradient.dart';
import 'package:project_test/pages/components/inputs/text.dart';
import 'package:project_test/pages/components/inputs/textarea.dart';
import 'package:project_test/pages/components/inputs/type_dropdown.dart';
import 'package:project_test/pages/components/text/heading_1.dart';
import 'package:project_test/root/root.dart';

class CreateWorkspace extends StatefulWidget {
  @override
  _CreateWorkspaceState createState() => _CreateWorkspaceState();
}

class _CreateWorkspaceState extends State<CreateWorkspace> {
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
                text: 'Create New Workspace',
              ),
              SizedBox(height: 20),
              InputText(
                label: 'Workspace Title',
              ),
              SizedBox(height: 20),
              DropdownType(
                option: ['Personal', 'Marketing', 'IT', 'Sales', 'Others'],
              ),
              SizedBox(height: 20),
              Textarea(
                label: 'Workspace Description (Optional)',
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
