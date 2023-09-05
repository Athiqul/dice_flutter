import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle(this.title, this.fontSize, this.color, {super.key});
  final String title;
  final double fontSize;
  final Color color;
  @override
  Widget build(context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize, fontWeight: FontWeight.bold, color: color),
      ),
    );
  }
}
