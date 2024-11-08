import 'package:flutter/material.dart';

class Heading5 extends StatelessWidget {
  final String text;

  const Heading5({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
