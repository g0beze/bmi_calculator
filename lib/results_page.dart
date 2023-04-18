import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'reusable_card.dart';
import 'buttons.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Text(
              'Your Result',
              style: kLargeTxtStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: kDefaultColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'NORMAL',
                    style: kResultTxtStyle,
                  ),
                  Text(
                    '26.7',
                    style: kELargeTxtStyle,
                  ),
                  Text(
                    'You have a higher than normal body weight. Try to exercise more.',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'Re-CALCULATE',
            rFunc: InputPage(),
          )
        ],
      ),
    );
  }
}
