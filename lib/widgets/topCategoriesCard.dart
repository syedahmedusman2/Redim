import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget topCategoriesCard(backgroundColor, String iconUrl, String title) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        height: 61,
        width: 65,
        decoration: BoxDecoration(
            color: colorStringToColor(backgroundColor),
            borderRadius: BorderRadius.circular(12)),
        child: Icon(
          Icons.category_outlined,
          size: 26,
        ),
      ),
      Container(
          margin: EdgeInsets.only(top: 3),
          width: 50,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Color(0xff5B5B5B)),
          ))
    ],
  );
}

Widget seeAllCard() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        height: 61,
        width: 65,
        decoration: BoxDecoration(
            color: Color(0xffE5F8FF), borderRadius: BorderRadius.circular(12)),
        child: Icon(
          Icons.arrow_forward,
          color: Color(0xff25BAFB),
        ),
      ),
      Container(
          margin: EdgeInsets.only(top: 3),
          width: 50,
          child: Text(
            "See All",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Color(0xff5B5B5B)),
          ))
    ],
  );
}

Color colorStringToColor(String backgroundColor) {
  String stringColor = "Color(0xff$backgroundColor)";
  String valueString =
      stringColor.split('(0x')[1].split(')')[0]; // kind of hacky..
  int value = int.parse(valueString, radix: 16);
  Color otherColor = new Color(value);
  return otherColor;
}
