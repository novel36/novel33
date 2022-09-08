import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Home.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(350, name: MOBILE),
            ResponsiveBreakpoint.resize(900, name: TABLET),
            ResponsiveBreakpoint.autoScale(1700, name: DESKTOP)
          ]),
      scrollBehavior: AppScrollBehavior(),
      title: "Novel Portfolio",
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(cardColor: const Color(0xFF212121)),
    );
  }
}
