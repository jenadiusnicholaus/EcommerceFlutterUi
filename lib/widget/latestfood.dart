import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:daddyfood/database/productscatalog.dart';
import 'package:daddyfood/widget/todaysdeals.dart';

class LatestFood extends StatefulWidget {
  @override
  _LatestFoodState createState() => _LatestFoodState();
}

class _LatestFoodState extends State<LatestFood> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      // color:Colors.red,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 5.0, left: 10.0),
      // padding: EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30.0),
            height: 80.0,
            // color: Colors.red,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 1.0,
                    child: Container(
                        width: 159,
                        margin: EdgeInsets.only(right: 15.0),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          // boxShadow: kElevationToShadow[4],
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 8.0),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(products[index].imageUrl),
                              )),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                // color: Colors.blue,
                                child: Column(
                                  children: [
                                    Text(
                                      products[index].title,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      products[index].items + '' + " kinds",
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  );
                }),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.shopping_bag,
                      color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Today's Deals",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TodaysDeals(),
          Container(
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.shopping_bag,
                      color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Popular items",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TodaysDeals()
        ],
      ),
    );
  }
}
