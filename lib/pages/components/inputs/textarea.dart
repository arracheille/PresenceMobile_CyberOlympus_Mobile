import 'package:flutter/material.dart';
import 'package:project_test/root/root.dart';

class Textarea extends StatelessWidget {
  final String label;

  const Textarea({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: darkblue(),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        maxLines: null,
        minLines: 4,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 13.0,
            color: Colors.white,
          ),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
