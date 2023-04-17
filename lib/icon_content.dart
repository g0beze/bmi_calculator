import 'package:flutter/material.dart';

const txtTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  IconContent({required this.icn, required this.txt});

  final IconData icn;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icn,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          txt,
          style: txtTextStyle,
        )
      ],
    );
  }
}
