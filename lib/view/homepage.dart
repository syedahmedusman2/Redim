import 'package:flutter/material.dart';
import 'package:redim/service/getUserInfo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff24CAE1),
          centerTitle: false,
          elevation: 0,
          title: Text("Redim"),
          actions: [
            Icon(Icons.notifications),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.34,
              width: double.infinity,
              color: Color(0xff24CAE1),
              child: Column(
                children: [
                  Row(
                    children: [],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
