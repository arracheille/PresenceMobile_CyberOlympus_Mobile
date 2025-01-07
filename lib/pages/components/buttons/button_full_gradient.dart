import 'package:flutter/material.dart';

class BtnFullGradient extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Gradient gradient;

  const BtnFullGradient({
    Key? key,
    this.onTap,
    required this.text,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
