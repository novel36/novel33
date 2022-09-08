// ignore_for_file: file_names

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Sections/MyPortfolioTabs/portfolioData/portfoliodata.dart';
import 'package:flutterresponsivenavigation/Sections/MyPortfolioTabs/projectsView.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: const Color(0xff262626),
      // padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            alignment: Alignment.bottomCenter,
            // color: Colors.red,
            child: const Text(
              "My Portfolio",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xffFF8C05),
                  fontSize: 30),
            ),
          ),
          const SizedBox(height: 32),
          const SizedBox(),
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Column(
                children: [
                  ButtonsTabBar(
                    unselectedBackgroundColor: Colors.transparent,
                    controller: tabController,
                    backgroundColor: Colors.transparent,
                    unselectedLabelStyle: const TextStyle(color: Colors.white),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                    labelStyle: const TextStyle(
                      color: Color(0xffFF8C05),
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: const [
                      Tab(
                        text: "See All",
                      ),
                      Tab(
                        text: "Mobile Apps",
                      ),
                      Tab(
                        text: "Websites",
                      ),
                      Tab(
                        text: "Designs",
                      ),
                      Tab(
                        text: "Graphics",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 32),
                      child: TabBarView(
                        controller: tabController,
                        children: <Widget>[
                          projectsView(
                              images: images,
                              projectTitle: projectTitle,
                              tabtitle: "Set All"),
                          projectsView(
                              images: images,
                              projectTitle: projectTitle,
                              tabtitle: "Mobile Apps"),
                          projectsView(
                              images: images,
                              projectTitle: projectTitle,
                              tabtitle: "Websites"),
                          projectsView(
                              images: images,
                              projectTitle: projectTitle,
                              tabtitle: "Designs"),
                          projectsView(
                              images: images,
                              projectTitle: projectTitle,
                              tabtitle: "Graphics"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
