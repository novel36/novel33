import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.linearGradient,
  }) : super(key: key);

  final Shader linearGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        color: Color(0xff262626),
        // padding: EdgeInsets.all(32),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "I AM BLEAK PEAKER",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
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
                        "Graphic Designer",
                        style: TextStyle(
                            foreground: Paint()..shader = linearGradient,
                            // color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Color.fromARGB(255, 255, 118, 5),
                            Color(0xffd61a5e),
                          ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              tileMode: TileMode.clamp)),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(16.0),
                            primary: Colors.transparent),
                        child: Text(
                          'Contact Me',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                color: Colors.green,
              )),
            ],
          ),
        ));
  }
}
