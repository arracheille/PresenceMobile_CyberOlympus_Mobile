import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatelessWidget {
  final String userName;
  final String formattedDate;
  final String formattedTime;

  const Navbar({
    Key? key,
    required this.userName,
    required this.formattedDate,
    required this.formattedTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 18.0,
              backgroundColor: Color(0xff2929cc),
              child: Text(
                'AR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              userName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            SvgPicture.asset(
              'assets/svg/bell-solid.svg',
              width: 20.0,
              height: 20.0,
            ),
          ],
        ),
        Divider(
          color: Colors.white,
          thickness: 2,
          height: 20,
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: 180,
              decoration: BoxDecoration(
                color: Color(0xff163155),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/location-dot-solid.svg',
                    width: 20.0,
                    height: 20.0,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Office',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  formattedDate,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  formattedTime,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
