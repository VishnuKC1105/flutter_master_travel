import 'package:flutter/material.dart';

import 'package:flutter_master_travel/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  Color colour;
  ResponsiveButton({
    Key? key,
    this.isResponsive = false,
    this.width,
    required this.colour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('img/button-one.png')],
      ),
    );
  }
}
