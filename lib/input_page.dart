import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const Color defaultColour = Color(0XFF1D1E33);
const Color bottomContainerColour = Color(0XFFEB1555);
const Color unselectedColour = Color(0xFF111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? defaultColour
                        : unselectedColour,
                    cardChild: IconContent(
                      icn: FontAwesomeIcons.mars,
                      txt: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? defaultColour
                        : unselectedColour,
                    cardChild: IconContent(
                      icn: FontAwesomeIcons.venus,
                      txt: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              colour: defaultColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: defaultColour,
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    colour: defaultColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
