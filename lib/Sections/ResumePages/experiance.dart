import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget experiancePage() {
  return Container(
    height: 380,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Experience",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 118, 5),
                      fontWeight: FontWeight.w900,
                      letterSpacing: 5,
                      fontSize: 24)),
              SizedBox(
                height: 32,
              ),
              Text("More than 6 years experience as a ",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      // letterSpacing: 5,
                      color: Colors.white,
                      fontSize: 40)),
              SizedBox(
                height: 8,
              ),
              Text("Designer",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      letterSpacing: 5,
                      color: Color.fromARGB(255, 255, 118, 5),
                      fontSize: 48))
            ],
          ),
        )),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                TimelineTile(
                  isFirst: true,
                  indicatorStyle: IndicatorStyle(color: Color(0xffFF8C05)),
                  afterLineStyle:
                      LineStyle(color: Colors.white, thickness: 2.2),
                  endChild: SizedBox(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pentagon Design",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Graphic Designer (2017 - 2019)",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  )),
                ),
                TimelineTile(
                  indicatorStyle: IndicatorStyle(color: Color(0xffFF8C05)),
                  afterLineStyle:
                      LineStyle(color: Colors.white, thickness: 2.2),
                  beforeLineStyle:
                      LineStyle(color: Colors.white, thickness: 2.2),
                  endChild: SizedBox(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Animate Studio",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Graphic Designer (2015 - 2017)",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  )),
                ),
                TimelineTile(
                  indicatorStyle: IndicatorStyle(color: Color(0xffFF8C05)),
                  afterLineStyle:
                      LineStyle(color: Colors.white, thickness: 2.2),
                  beforeLineStyle:
                      LineStyle(color: Colors.white, thickness: 2.2),
                  endChild: SizedBox(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cute Studio",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Graphic Designer (2014 - 2015)",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  )),
                ),
                TimelineTile(
                  indicatorStyle: IndicatorStyle(color: Color(0xffFF8C05)),
                  afterLineStyle:
                      LineStyle(color: Colors.white, thickness: 2.2),
                  beforeLineStyle:
                      LineStyle(color: Colors.white, thickness: 2.2),
                  endChild: SizedBox(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "City Printing",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Graphic Designer (2013 - 2014)",
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
      ],
    ),
  );
}
