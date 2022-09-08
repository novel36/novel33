import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MySmoothPages extends StatefulWidget {
  const MySmoothPages({Key? key}) : super(key: key);

  @override
  State<MySmoothPages> createState() => _MySmoothPagesState();
}

class _MySmoothPagesState extends State<MySmoothPages> {
  final PageController controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              child: PageView(
                controller: controller,
                reverse: true,
                children: [
                  Container(
                    color: Colors.red,
                    child: const Text("data1"),
                  ),
                  Container(
                    color: Colors.blue,
                    child: const Text("data2"),
                  ),
                  Container(
                    color: Colors.green,
                    child: const Text("data3"),
                  ),
                  Container(
                    color: Colors.red,
                    child: const Text("data1"),
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 4,
              onDotClicked: (index) {
                controller.jumpToPage(index);
              },
            )
          ],
        ),
      ),
    );
  }
}
