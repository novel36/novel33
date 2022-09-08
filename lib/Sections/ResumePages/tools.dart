import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget tools(BuildContext context, {required Shader linearGradient}) {
  return SizedBox(
    height: 380,
    child: ResponsiveRowColumn(
      rowMainAxisAlignment: MainAxisAlignment.end,
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      columnMainAxisAlignment: MainAxisAlignment.start,
      layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      children: [
        ResponsiveRowColumnItem(
          child: Expanded(
              child: Container(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Text("Tools",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 118, 5),
                      fontWeight: FontWeight.w900,
                      letterSpacing: 5,
                      fontSize: ResponsiveValue(context,
                          defaultValue: 40.0,
                          valueWhen: [
                            const Condition.smallerThan(
                                name: TABLET, value: 32.0)
                          ]).value,
                    )),
                const SizedBox(
                  height: 40,
                ),
                Text("Coding tools I've used for",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      // letterSpacing: 5,
                      color: Colors.white,
                      fontSize: ResponsiveValue(context,
                          defaultValue: 40.0,
                          valueWhen: [
                            const Condition.smallerThan(
                                name: TABLET, value: 32.0)
                          ]).value,
                    )),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('Developing',
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w900,
                            letterSpacing: 5,
                            color: const Color.fromARGB(255, 255, 118, 5),
                            fontSize: ResponsiveValue(context,
                                defaultValue: 40.0,
                                valueWhen: [
                                  const Condition.smallerThan(
                                      name: TABLET, value: 36.0)
                                ]).value,
                          )),
                      TyperAnimatedText('Designing',
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w900,
                            letterSpacing: 5,
                            color: const Color.fromARGB(255, 255, 118, 5),
                            fontSize: ResponsiveValue(context,
                                defaultValue: 40.0,
                                valueWhen: [
                                  const Condition.smallerThan(
                                      name: TABLET, value: 36.0)
                                ]).value,
                          )),
                    ],
                    repeatForever: true,
                  ),
                ),
              ],
            ),
          )),
        ),
        ResponsiveRowColumnItem(
          child: Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  TimelineTile(
                    isFirst: true,
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Visual Studio Code",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Source-code editor",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                  TimelineTile(
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    beforeLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Android Studio",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Official IDE for Android application development",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                  TimelineTile(
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    beforeLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Figma",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "A Design tool for interface design",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                  TimelineTile(
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    beforeLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Adobe XD",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "A Design tool for web and mobile applications",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                  TimelineTile(
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    beforeLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Inkscape",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "A vector graphics editor used to create vector images",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                  TimelineTile(
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    beforeLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Atom",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Source code editor ",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
