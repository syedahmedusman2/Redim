import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:redim/service/getCategories.dart';
import 'package:redim/service/getTopBrands.dart';
import 'package:redim/service/getUserInfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getUserInfo(context);
    getTopBrands(context);
    getCetegoriesList(context);
  }

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
        body: Consumer3(
            builder: (context, userInfo, topCategories, topBrands, child) {
          return Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.34,
                  width: double.infinity,
                  color: Color(0xff24CAE1),
                  child: Column(
                    children: [Text("ss")],
                  ))
            ],
          );
          // your widget
        }));
  }
}
