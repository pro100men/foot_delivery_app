import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foot_delivery_app/widgets/AppBarWidget.dart';
import 'package:foot_delivery_app/widgets/CategoriesWidget.dart';
import 'package:foot_delivery_app/widgets/DrawerWidget.dart';
import 'package:foot_delivery_app/widgets/HomeBottomNavBar.dart';
import 'package:foot_delivery_app/widgets/NewestItemWidget.dart';
import 'package:foot_delivery_app/widgets/PopularWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3)),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.red,
                      ),
                      Container(
                        width: 330,
                        height: 50,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Поиск товаров',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.filter_list)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'Категории',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            CategoriesWidget(),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'Популярное',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            PopularItemWidget(),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'Новинки',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            NewestItemWidget(),
          ],
        ),
        drawer: DrawerWidget(),
        floatingActionButton: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3))
              ]),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart,
              size: 25,
              color: Colors.red,
            ),
            backgroundColor: Colors.white,
          ),
        ),
        bottomNavigationBar: HomeBottomNavBar(),
      ),
    );
  }
}
