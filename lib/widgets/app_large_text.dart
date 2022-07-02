import 'package:flutter/material.dart';

class ApplargeText extends StatelessWidget {
  double size;
  final String text;
  Color colours;
  ApplargeText({
    Key? key,
    this.size = 30,
    required this.text,
    this.colours = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colours,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
