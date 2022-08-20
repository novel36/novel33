import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Home.dart';
import 'package:flutterresponsivenavigation/smooth.dart';

void main() {
  runApp(const MyApp());
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      title: "PortfolioApp",
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(cardColor: Color(0xFF212121)),
    );
  }
}
