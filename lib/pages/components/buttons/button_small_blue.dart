import 'package:flutter/material.dart';
import 'package:project_test/pages/components/text/text_small_10.dart';
import 'package:project_test/root/root.dart';

class BtnSmallBlue extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;

  const BtnSmallBlue({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: blue(),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(5.0),
          onTap: onTap,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: TextSmall(text: text),
          ),
        ),
      ),
    );
  }
}
