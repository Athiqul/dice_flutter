import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

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

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            LinearGradient(begin: topAlign, end: bottomAlign, colors: colors),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
