// ignore_for_file: file_names

import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.linearGradient,
  }) : super(key: key);

  final Shader linearGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
        height:
            ResponsiveWrapper.of(context).isSmallerThan("TABLET") ? 700 : 400,
        color: const Color(0xff262626),
        padding: const EdgeInsets.all(32),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                child: Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "I AM NOVEL",
                        style: TextStyle(
                            color: Color.fromARGB(230, 255, 249, 249),
                            fontWeight: FontWeight.w100,
                            letterSpacing: 5,
                            fontSize: 22),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: 150,
                      alignment: Alignment.centerLeft,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Full-Stack web developer,',
                              textStyle: TextStyle(
                                foreground: Paint()..shader = linearGradient,
                                // color: Colors.white,
                                fontSize: ResponsiveValue(context,
                                    defaultValue: 38.0,
                                    valueWhen: [
                                      const Condition.smallerThan(
                                          name: TABLET, value: 36.0)
                                    ]).value,
                                fontWeight: FontWeight.bold,
                              )),
                          TyperAnimatedText('Mobile Apps Developer,',
                              textStyle: TextStyle(
                                foreground: Paint()..shader = linearGradient,
                                // color: Colors.white,
                                fontSize: ResponsiveValue(context,
                                    defaultValue: 48.0,
                                    valueWhen: [
                                      const Condition.smallerThan(
                                          name: TABLET, value: 36.0)
                                    ]).value,
                                fontWeight: FontWeight.bold,
                              )),
                          TyperAnimatedText('Web designer,',
                              textStyle: TextStyle(
                                foreground: Paint()..shader = linearGradient,
                                // color: Colors.white,
                                fontSize: ResponsiveValue(context,
                                    defaultValue: 48.0,
                                    valueWhen: [
                                      const Condition.smallerThan(
                                          name: TABLET, value: 36.0)
                                    ]).value,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                        repeatForever: true,
                      ),
                    ),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Color.fromARGB(255, 255, 118, 5),
                            Color(0xffd61a5e),
                          ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              tileMode: TileMode.clamp)),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.transparent),
                        child: const Text(
                          'Contact Me',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )),
              ),
              ResponsiveRowColumnItem(
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: pi / 4,
                        child: Container(
                            width: 200,
                            height: 200,
                            // color: Colors.green,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    opacity: 0.6,
                                    image: AssetImage("intro-image.jpg"),
                                    fit: BoxFit.cover))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
