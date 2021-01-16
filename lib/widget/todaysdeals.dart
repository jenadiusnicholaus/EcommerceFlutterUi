import 'package:daddyfood/database/productscatalog.dart';
import 'package:flutter/material.dart';

class TodaysDeals extends StatefulWidget {
  @override
  _TodaysDealsState createState() => _TodaysDealsState();
}

class _TodaysDealsState extends State<TodaysDeals> {
  final String dollarsign = " \$";
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: EdgeInsets.only(right: 13.0),
              height: 100.0,
              width: 150,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                            image: AssetImage(products[index].imageUrl))),
                    height: 100.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Row(
                    children: [
                      Text(products[index].title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${dollarsign + products[index].price}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 30.0,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Icon(Icons.add)),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
