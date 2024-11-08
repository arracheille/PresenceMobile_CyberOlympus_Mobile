import 'package:flutter/material.dart';

class Heading3 extends StatelessWidget {
  final String text;

  const Heading3({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
