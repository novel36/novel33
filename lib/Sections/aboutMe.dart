// ignore_for_file: file_names

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
    required this.linearGradient,
  }) : super(key: key);
  final Shader linearGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ResponsiveValue(context,
                defaultValue: 400.0,
                valueWhen: [Condition.smallerThan(name: MOBILE, value: 500.0)])
            .value,
        color: const Color(0xff262626),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(32.0),
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "About Me",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 118, 5),
                          fontWeight: FontWeight.w900,
                          letterSpacing: 5,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Text(
                        'I AM NOVEL',
                        style: TextStyle(
                          fontSize: ResponsiveValue(context,
                              defaultValue: 28.0,
                              valueWhen: [
                                const Condition.smallerThan(
                                    name: TABLET, value: 24.0)
                              ]).value,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 100,
                    child: DefaultTextStyle(
                      style: TextStyle(
                          fontSize: ResponsiveValue(context,
                              defaultValue: 38.0,
                              valueWhen: [
                                const Condition.smallerThan(
                                    name: TABLET, value: 28.0)
                              ]).value,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.clip),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Full-stack web developer,',
                              textStyle: TextStyle(
                                foreground: Paint()..shader = linearGradient,
                              )),
                          TyperAnimatedText('Mobile Apps Developer,',
                              textStyle: TextStyle(
                                foreground: Paint()..shader = linearGradient,
                              )),
                          TyperAnimatedText('Web designer.',
                              textStyle: TextStyle(
                                foreground: Paint()..shader = linearGradient,
                              )),
                        ],
                        repeatForever: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Wrap(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    '''I am  a web and mobile app developer from Ethiopia,Negele Borena and currently living in Addis Abeba.I enjoy building  everything from small business sites to rich interactive web apps.if you are  seeking  a web presence or an employer looking to hire,you can get in touch with me''',
                                style: TextStyle(
                                    fontSize: ResponsiveValue(context,
                                        defaultValue: 14.0,
                                        valueWhen: [
                                          const Condition.smallerThan(
                                              name: TABLET, value: 13.0)
                                        ]).value,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.3,
                                    textBaseline: TextBaseline.alphabetic,
                                    height: 1.5),
                              ),
                              TextSpan(
                                text: ' here',
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.3,
                                    textBaseline: TextBaseline.alphabetic,
                                    height: 1.5),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    if (kDebugMode) {
                                      print("object");
                                    }
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
            ResponsiveVisibility(
              hiddenWhen: const [Condition.smallerThan(name: TABLET)],
              child: Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        opacity: 0.6,
                        image: AssetImage("about.jpg"),
                        fit: BoxFit.cover)),
              )),
            ),
          ],
        ));
  }
}
