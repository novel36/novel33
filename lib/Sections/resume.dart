import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterresponsivenavigation/Sections/ResumePages/experiance.dart';
import 'package:flutterresponsivenavigation/Sections/ResumePages/skills.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyResume extends StatelessWidget {
  MyResume({Key? key}) : super(key: key);

  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Color(0xff262626),
      // padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            alignment: Alignment.bottomCenter,
            // color: Colors.red,
            child: Text(
              "My Resume",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xffFF8C05),
                  fontSize: 30),
            ),
          ),
          Expanded(
            child: PageView(
              reverse: false,
              pageSnapping: true,
              controller: controller,
              physics: BouncingScrollPhysics(),
              children: [
                experiancePage(),
                skillsPage(),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            // color: Colors.blue,
            child: SmoothPageIndicator(
              controller: controller,
              count: 2,
              effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Color.fromARGB(148, 255, 138, 5),
                  activeDotColor: Color(0xffFF8C05)),
              onDotClicked: (index) {
                controller.animateToPage(index,
                    duration: Duration(seconds: 2), curve: Curves.bounceOut);
              },
            ),
          ),
        ],
      ),
    );
  }
}
