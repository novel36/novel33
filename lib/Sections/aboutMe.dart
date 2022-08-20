import 'dart:math';

import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        color: Color(0xff262626),
        // padding: EdgeInsets.all(32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "About Me",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 118, 5),
                          fontWeight: FontWeight.w900,
                          letterSpacing: 5,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "I am a Graphic Designer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text.rich(TextSpan(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut doloremque ratione perferendis possimus voluptatibus distinctio autem expedita qui unde modi impedit officia illum praesentium amet, vero quos natus veritatis totam!",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.3,
                          textBaseline: TextBaseline.alphabetic,
                          height: 1.5)))
                ],
              ),
            )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("about.jpg"), fit: BoxFit.cover)),
            )),
          ],
        ));
  }
}
