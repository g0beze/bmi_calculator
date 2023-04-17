import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                const Expanded(
                  child: ResuableCard(),
                ),
                const Expanded(
                  child: ResuableCard(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ResuableCard(),
          ),
          Expanded(
            child: Row(
              children: [
                const Expanded(
                  child: ResuableCard(),
                ),
                const Expanded(
                  child: ResuableCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResuableCard extends StatelessWidget {
  const ResuableCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0XFF1D1E33),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
