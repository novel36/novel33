// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ResponsiveValue(context, defaultValue: 700.0, valueWhen: [
          const Condition.smallerThan(name: TABLET, value: 700.0)
        ]).value,
        color: const Color(0xff262626),
        // padding: EdgeInsets.all(0),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(32.0),
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Contact Me",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 118, 5),
                          fontWeight: FontWeight.w900,
                          letterSpacing: 5,
                          fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Realize your dream with us",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ResponsiveValue(context,
                              defaultValue: 48.0,
                              valueWhen: [
                                const Condition.smallerThan(
                                    name: TABLET, value: 36.0)
                              ]).value,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.facebookF,
                              size: 20),
                          color: Colors.white),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon:
                              const FaIcon(FontAwesomeIcons.twitter, size: 20),
                          color: Colors.white),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.google, size: 20),
                          color: Colors.white),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon:
                              const FaIcon(FontAwesomeIcons.telegram, size: 20),
                          color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "First name",
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade700),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.3),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 118, 5)),
                                ),
                              )),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: TextField(
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Last name",
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade700),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.3),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 118, 5)),
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "First name",
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade700),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.3),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 118, 5)),
                                ),
                              )),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: TextField(
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Last name",
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade700),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.3),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 118, 5)),
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    TextField(
                        maxLines: 10,
                        minLines: 5,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Message",
                          hintStyle: TextStyle(color: Colors.grey.shade700),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.3),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 118, 5)),
                          ),
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    DecoratedBox(
                      decoration: const BoxDecoration(
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
                            padding: const EdgeInsets.symmetric(
                                vertical: 24.0, horizontal: 16.0),
                            primary: Colors.transparent),
                        child: const Text(
                          'Send message',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ));
  }
}
