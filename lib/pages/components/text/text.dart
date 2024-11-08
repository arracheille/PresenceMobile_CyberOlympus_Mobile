import 'package:flutter/material.dart';

class TextP extends StatelessWidget {
  final String text;

  const TextP({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
