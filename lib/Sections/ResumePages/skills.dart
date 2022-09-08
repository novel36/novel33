import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Sections/ResumePages/skillsBar.dart';
import 'package:responsive_framework/responsive_framework.dart';

Widget skillsPage(BuildContext context) {
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
                const Text("Skills",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 118, 5),
                        fontWeight: FontWeight.w900,
                        letterSpacing: 5,
                        fontSize: 24)),
                const SizedBox(
                  height: 32,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "With good \n",
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
                  TextSpan(
                      text: "Personal and\n",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        letterSpacing: 5,
                        color: const Color.fromARGB(255, 255, 118, 5),
                        fontSize: ResponsiveValue(context,
                            defaultValue: 40.0,
                            valueWhen: [
                              const Condition.smallerThan(
                                  name: TABLET, value: 32.0)
                            ]).value,
                      )),
                  TextSpan(
                      text: "Professional",
                      children: [
                        TextSpan(
                            text: " Skills",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              letterSpacing: 5,
                              color: const Color.fromARGB(255, 255, 118, 5),
                              fontSize: ResponsiveValue(context,
                                  defaultValue: 40.0,
                                  valueWhen: [
                                    const Condition.smallerThan(
                                        name: TABLET, value: 32.0)
                                  ]).value,
                            ))
                      ],
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
                      ))
                ])),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          )),
        ),
        ResponsiveRowColumnItem(
          child: Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ExpansionTile(
                        textColor: Colors.white,
                        iconColor: Colors.red,
                        collapsedIconColor: Colors.red,
                        title: const Text(
                          "Professional Skills",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        leading: const Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 22,
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        initiallyExpanded: true,
                        children: [
                          skillsBar(skillName: "Flutter", skillPercent: 0.75),
                          skillsBar(skillName: "HTML", skillPercent: 0.85),
                          skillsBar(skillName: "CSS", skillPercent: 0.8),
                          skillsBar(skillName: "Javascript", skillPercent: 0.7),
                          skillsBar(skillName: "PHP", skillPercent: 0.65),
                          skillsBar(skillName: "Django", skillPercent: 0.65),
                          skillsBar(skillName: "Graphics", skillPercent: 0.4),
                          skillsBar(skillName: "Bootstrap", skillPercent: 0.4),
                          skillsBar(skillName: "Python", skillPercent: 0.4),
                        ]),
                    ExpansionTile(
                        textColor: Colors.white,
                        iconColor: Colors.red,
                        title: const Text(
                          "Personal Skills",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        leading: const Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 22,
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        children: [
                          skillsBar(skillName: "Creativity", skillPercent: 0.5),
                          skillsBar(skillName: "Inovation", skillPercent: 0.5),
                          skillsBar(skillName: "Teamwork", skillPercent: 0.5),
                          skillsBar(
                              skillName: "Communication", skillPercent: 0.5),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
