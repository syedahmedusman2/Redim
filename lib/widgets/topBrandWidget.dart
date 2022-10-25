import 'package:flutter/material.dart';

Widget topBrandWidget(
    String title, String imageUrl, rating, percentNow, percentOld) {
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: NetworkImage(imageUrl.replaceAll(r"\", "")),
          height: 100,
          width: 50,
        ),
        Text(title),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow.shade900,
            ),
            Text(rating.toString())
          ],
        )
      ],
    ),
  );
}
