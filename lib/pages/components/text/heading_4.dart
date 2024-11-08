import 'package:flutter/material.dart';

class Heading4 extends StatelessWidget {
  final String text;

  const Heading4({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
