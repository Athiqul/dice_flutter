import 'package:flutter/material.dart';

const topAlign = Alignment.topLeft;
const bottomAlign = Alignment.bottomRight;

class CustomWidget extends StatelessWidget {
  const CustomWidget(
    this.colors, {
    super.key,
  });
  CustomWidget.purple({super.key})
      : colors = [Colors.purpleAccent, Colors.amberAccent];

  final List<Color> colors;

  void rollDice() {
    //On press function
  }
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            LinearGradient(begin: topAlign, end: bottomAlign, colors: colors),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-1.png',
            width: 180,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text(
                'Roll Dice!',
                style: TextStyle(color: Colors.white),
              ))
        ],
      )),
    );
  }
}
