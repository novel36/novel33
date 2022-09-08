// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class footer extends StatelessWidget {
  const footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      color: const Color(0xff262626),
      // padding: EdgeInsets.all(),
      child: const Text(
        "novel @ 2022",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
