import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kTxtTextStyle,
        )
      ],
    );
  }
}
