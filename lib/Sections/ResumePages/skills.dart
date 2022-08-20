import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Sections/ResumePages/skillsBar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget skillsPage() {
  return Container(
    height: 380,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
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
              const Text.rich(TextSpan(children: [
                const TextSpan(
                    text: "With good \n",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        // letterSpacing: 5,
                        color: Colors.white,
                        fontSize: 40)),
                TextSpan(
                    text: "Personal and\n",
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 118, 5),
                        fontSize: 48)),
                TextSpan(
                    text: "Professional",
                    children: [
                      const TextSpan(
                          text: " Skills",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              letterSpacing: 5,
                              color: const Color.fromARGB(255, 255, 118, 5),
                              fontSize: 48))
                    ],
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        // letterSpacing: 5,
                        color: Colors.white,
                        fontSize: 40))
              ])),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        )),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ExpansionTile(
                      textColor: Colors.white,
                      iconColor: Colors.red,
                      collapsedIconColor: Colors.red,
                      title: Text(
                        "Professional Skills",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      leading: Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 22,
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      initiallyExpanded: true,
                      children: [
                        skillsBar(skillName: "Creativity", skillPercent: 0.5),
                        skillsBar(skillName: "Inovation", skillPercent: 0.5),
                        skillsBar(skillName: "Teamwork", skillPercent: 0.5),
                        skillsBar(
                            skillName: "Communication", skillPercent: 0.5),
                      ]),
                  ExpansionTile(
                      textColor: Colors.white,
                      iconColor: Colors.red,
                      title: Text(
                        "Personal Skills",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      leading: Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 22,
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      children: [
                        skillsBar(skillName: "Flutter", skillPercent: 0.75),
                        skillsBar(skillName: "Graphics", skillPercent: 0.4),
                        skillsBar(skillName: "HTML", skillPercent: 0.85),
                        skillsBar(skillName: "CSS", skillPercent: 0.8),
                        skillsBar(skillName: "Javascript", skillPercent: 0.7),
                        skillsBar(skillName: "PHP", skillPercent: 0.65),
                        skillsBar(skillName: "Django", skillPercent: 0.65),
                      ]),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
