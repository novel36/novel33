// ignore_for_file: file_names

import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Sections/aboutMe.dart';
import 'package:flutterresponsivenavigation/Sections/contactMe.dart';
import 'package:flutterresponsivenavigation/Sections/footer.dart';
import 'package:flutterresponsivenavigation/Sections/myPortfolio.dart';
import 'package:flutterresponsivenavigation/Sections/profileIntro.dart';
import 'package:flutterresponsivenavigation/Sections/resume.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final ScrollController _pageScrollController = ScrollController();
  final Shader linearGradient = const LinearGradient(
          colors: <Color>[Color(0xffd61a5e), Color(0xffff8c05)],
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft)
      .createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 230.0));

  final List<GlobalKey> _globalkey = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];
  double _height = 0.0;
  double _width = 0.0;
  bool isVisiable = false;
  bool isMenuOpened = false;
  late AnimationController _controller;

  scrollToSection(int section) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Scrollable.ensureVisible(
        _globalkey[section].currentContext!,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF212121),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: ResponsiveValue(context, defaultValue: 96.0, valueWhen: [
                  const Condition.smallerThan(name: TABLET, value: 16.0)
                ]).value!,
                right: ResponsiveValue(context, defaultValue: 96.0, valueWhen: [
                  const Condition.smallerThan(name: TABLET, value: 16.0)
                ]).value!,
                top: 40,
                bottom: 64),
            child: StickyHeader(
              // overlapHeaders: true,

              header: Visibility(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color(0xff262626),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(8)),
                            onPressed: () {},
                            child: Text(
                              "NOVEL",
                              style: TextStyle(
                                  foreground: Paint()..shader = linearGradient,
                                  fontWeight: FontWeight.w900,
                                  // color: Colors.white,
                                  letterSpacing: 10,
                                  fontSize: 25),
                            ),
                          ),
                          ResponsiveVisibility(
                            replacement: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  if (!isMenuOpened) {
                                    _controller.forward();
                                    isMenuOpened = true;

                                    setState(() {
                                      _height = 250.0;
                                    });
                                  } else {
                                    _controller.reverse();
                                    isMenuOpened = false;

                                    setState(() {
                                      _height = 0.0;
                                    });
                                  }
                                },
                                child: AnimatedIcon(
                                    size: 36,
                                    color: Colors.white,
                                    icon: AnimatedIcons.menu_close,
                                    progress: _controller),
                              ),
                            ),
                            // replacement: IconButton(
                            //     onPressed: () {
                            //       if (_height == 0.0) {
                            //         setState(() {
                            //           _height = 250.0;
                            //         });
                            //       } else {
                            //         setState(() {
                            //           _height = 0.0;
                            //         });
                            //       }
                            //     },
                            //     icon: const Icon(
                            //       Icons.menu,
                            //       color: Colors.white,
                            //     )),
                            visibleWhen: const [
                              Condition.largerThan(name: TABLET)
                            ],
                            hiddenWhen: const [
                              Condition.smallerThan(name: TABLET)
                            ],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MouseRegion(
                                  cursor: MouseCursor.defer,
                                  onEnter: (event) {
                                    if (kDebugMode) {
                                      print("Cool");
                                    }
                                  },
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          padding: const EdgeInsets.all(16)),
                                      onPressed: () {
                                        scrollToSection(0);
                                      },
                                      child: const Text(
                                        "Home",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16)),
                                    onPressed: () {
                                      scrollToSection(1);
                                    },
                                    child: const Text(
                                      "About",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16)),
                                    onPressed: () {
                                      scrollToSection(2);
                                    },
                                    child: const Text(
                                      "Resume",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16)),
                                    onPressed: () {
                                      scrollToSection(3);
                                    },
                                    child: const Text(
                                      "Portfolio",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16)),
                                    onPressed: () {
                                      scrollToSection(4);
                                    },
                                    child: const Text(
                                      "Contact Me",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: ResponsiveVisibility(
                        hiddenWhen: [Condition.equals(name: TABLET)],
                        child: AnimatedContainer(
                          curve: Curves.easeInOut,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 8.0),
                          height: _height,
                          width: double.infinity,
                          duration: Duration(milliseconds: 1),
                          decoration: const BoxDecoration(
                            color: Color(0xff262626),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Home",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  )),
                              SizedBox(
                                height: 16,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "About",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  )),
                              SizedBox(
                                height: 16,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Resume",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  )),
                              SizedBox(
                                height: 16,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Portfolio",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  )),
                              SizedBox(
                                height: 16,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Contact me",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Visibility(
                    //     visible: isVisiable,
                    //     child: Text(
                    //       "data",
                    //       style: TextStyle(fontSize: 100),
                    //     ))
                  ],
                ),
              ),
              content: SingleChildScrollView(
                controller: _pageScrollController,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
                    Profile(
                      linearGradient: linearGradient,
                      key: _globalkey[0],
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    AboutMe(
                      linearGradient: linearGradient,
                      key: _globalkey[1],
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    MyResume(
                      linearGradient: linearGradient,
                      key: _globalkey[2],
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    MyPortfolio(
                      key: _globalkey[3],
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    ContactMe(
                      key: _globalkey[4],
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    const footer(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
