import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      elevation: 5,
      child: Container(
          height: 48,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: const Color(0XFFFFFFFF),
              border: Border.all(color: const Color(0XFFFFFFFF)),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              tapIcon('assets/images/home.png', "Home"),
              tapIcon('assets/images/shopes.png', "All Shops"),
              tapIcon('assets/images/portfolio.jpg', "Portfolio"),
              tapIcon('assets/images/menu.png', "Menu"),
            ],
          )),
    );
  }
}

Widget tapIcon(assetImage, assetName) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        assetImage,
        height: 30,
        width: 30,
      ),
      Text(assetName)
    ],
  );
}
