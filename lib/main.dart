import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: CustomWidget(),
    ),
  ));
}

//CREATE custome widget
class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, title});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(167, 21, 186, 207),
              Color.fromARGB(38, 110, 153, 182)
            ]),
      ),
      child: const Center(
        child: Text(
          'Hi this is testing',
          style: TextStyle(
              fontSize: 28, color: Colors.white60, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
