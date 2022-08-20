import 'package:flutter/material.dart';

const _images = [
  'https://picsum.photos/200/300',
  'https://picsum.photos/200/301',
  'https://picsum.photos/200/302',
  'https://picsum.photos/200/303',
  'https://picsum.photos/200/304',
  'https://picsum.photos/200/305',
];

GridView seeAll() {
  return GridView.count(
    crossAxisCount: 3,
    childAspectRatio: 0.9,
    crossAxisSpacing: 64,
    mainAxisSpacing: 32,
    children: [
      Container(
        //
        height: 200,
        // color: Colors.red,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[0]))),
      ),
      Container(
        height: 200,
        // color: Colors.yellow,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[1]))),
      ),
      Container(
        height: 200,
        // color: Colors.pink,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[2]))),
      ),
      Container(
        height: 200,
        // color: Colors.green,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[3]))),
      ),
      Container(
        height: 200,
        // color: Colors.purple,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[4]))),
      ),
      Container(
        height: 200,
        // color: Colors.amber,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[5]))),
      )
    ],
  );
}
