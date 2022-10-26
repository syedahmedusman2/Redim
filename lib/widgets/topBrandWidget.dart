import 'package:flutter/material.dart';

Widget topBrandWidget(
    String title, String imageUrl, rating, percentNow, percentOld) {
  return SizedBox(
    height: 50,
    width: 145,
    child: Card(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image(
              image: NetworkImage(imageUrl.replaceAll(r"\", "")),
              height: 100,
              width: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                  size: 20,
                ),
              ),
              Text(
                rating.toString(),
                style: TextStyle(color: Color(0xff979797)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4, top: 4),
            child: Row(
              children: [
                Text(
                  "Upto $percentNow%",
                  style: TextStyle(color: Color(0xff24CAE1)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Was $percentOld%",
                  style: TextStyle(color: Color(0xff979797), fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
