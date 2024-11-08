import 'package:flutter/material.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/pages/components/text/text.dart';
import 'package:project_test/pages/components/text/text_small_10.dart';
import 'package:project_test/root/root.dart';

class InOutItem extends StatelessWidget {
  final String title;
  final String min;
  final String status;
  final String at;
  final Gradient gradient;

  const InOutItem({
    Key? key,
    required this.title,
    required this.min,
    required this.status,
    required this.at,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          color: blue(),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Heading3(text: title),
              TextSmall(text: min),
              SizedBox(height: 15),
              TextSmall(text: at),
              TextP(text: status),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: gradient,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(5.0),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: TextSmall(text: title),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
