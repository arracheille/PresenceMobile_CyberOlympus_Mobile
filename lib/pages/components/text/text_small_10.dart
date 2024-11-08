import 'package:flutter/material.dart';

class TextSmall extends StatelessWidget {
  final String text;

  const TextSmall({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
