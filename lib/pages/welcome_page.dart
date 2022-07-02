import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master_travel/misc/colors.dart';
import 'package:flutter_master_travel/widgets/app_large_text.dart';
import 'package:flutter_master_travel/widgets/app_text.dart';
import 'package:flutter_master_travel/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/' + images[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 150, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ApplargeText(
                            text: 'Trips',
                          ),
                          AppText(
                            text: 'Mountain ',
                            size: 30,
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 250,
                            child: AppText(
                                text:
                                    'Mountain hikes give you an incredible sense of freedom along with endurance test.'),
                          ),
                          SizedBox(height: 40),
                          ResponsiveButton(
                            width: 110,
                            colour: AppColors.mainColor,
                          ),
                        ]),
                    //For dot thing
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.all(1),
                          width: 8,
                          height: index == indexDots
                              ? 25
                              : 8, //if true height = 25, if false height = 8;
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.mainColor),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
