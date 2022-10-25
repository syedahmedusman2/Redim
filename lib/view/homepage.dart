import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:redim/providers/categoriesProvider.dart';
import 'package:redim/providers/topBrandsProvider.dart';
import 'package:redim/providers/userInfoProvider.dart';
import 'package:redim/service/getCategories.dart';
import 'package:redim/service/getTopBrands.dart';
import 'package:redim/service/getUserInfo.dart';
import 'package:redim/widgets/topBrandWidget.dart';

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
        body:
            Consumer3<UserInfoProvider, CategoriesProvider, TopBrandsProvider>(
                builder: (context, userInfo, topCategories, topBrands, child) {
          return SizedBox(
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.24,
                    width: double.infinity,
                    color: Color(0xff24CAE1),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hey, ${userInfo.data!.data!.user![0].name!}",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text("\$0,00",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26)),
                          ),
                          Text("Portfolio Value",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18))
                        ],
                      ),
                    )),
                Positioned(
                  top: 120,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 18,
                              ),
                              Text(
                                "Top Brands",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              Spacer(),
                              Text(
                                "View All",
                                style: TextStyle(color: Color(0xff25BAFB)),
                              ),
                              SizedBox(
                                width: 18,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 500,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: topBrands.data!.data!.stores!.length,
                              itemBuilder: (context, index) {
                                return topBrandWidget(
                                    topBrands.data!.data!.stores![index].name!,
                                    topBrands.data!.data!.stores![index].logo!,
                                    topBrands.data!.data!.stores![index].rating,
                                    topBrands
                                        .data!.data!.stores![index].percentNow,
                                    topBrands
                                        .data!.data!.stores![index].percentOld);
                              }),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }));
  }
}
