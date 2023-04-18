import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.text, required this.rFunc});
  final String text;
  final Widget rFunc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => rFunc));
      },
      child: Container(
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 12),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: kButtonTxtStyle,
          ),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.icon, this.iFunc});

  final IconData? icon;
  final Function()? iFunc;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: iFunc,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(
        icon,
        size: 35,
      ),
    );
  }
}
