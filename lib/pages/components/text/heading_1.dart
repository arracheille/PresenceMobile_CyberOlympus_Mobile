import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {
  final String text;

  const Heading1({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
