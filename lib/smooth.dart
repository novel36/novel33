import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                    child: Text("data1"),
                    color: Colors.red,
                  ),
                  Container(
                    child: Text("data2"),
                    color: Colors.blue,
                  ),
                  Container(
                    child: Text("data3"),
                    color: Colors.green,
                  ),
                  Container(
                    child: Text("data1"),
                    color: Colors.red,
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
