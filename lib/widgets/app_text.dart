import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  Color colours;
  AppText({
    Key? key,
    this.size = 15,
    required this.text,
    this.colours = Colors.black45,
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
