import 'package:daddyfood/database/productscatalog.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final String dollarsign = " \$";
  double totalprice = 0;

  void _getTotal(int index) {
    setState(() {
      for (index; index <= products.length; index++) {
        totalprice = totalprice * int.parse(products[index].price);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child: Container(
        color: Theme.of(context).accentColor,
        // color:Colors.red,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(right: 10.0, left: 10.0),

        child: Column(
          children: [
            Container(
              height: 50.0,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Monday August 24',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '(4)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 400.0,
              // color: Colors.red,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      height: 79.0,
                      margin: EdgeInsets.only(bottom: 20),
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 70,

                            decoration: BoxDecoration(
                                // color: Colors.red,
                                image: DecorationImage(
                                    image: AssetImage(
                                  products[index].imageUrl,
                                )),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),

                            // dec
                          ),
                          Column(
                            children: [
                              Text(
                                products[index].title,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.remove),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.add),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                dollarsign + ' ' + products[index].price,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Container(
                                height: 40.0,
                                width: 45.0,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                      style: BorderStyle.solid,
                                      width: 4.0,
                                      color: Theme.of(context).primaryColor,
                                    )),
                                child: Icon(
                                  Icons.delete,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ));
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Total',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('\$ 800',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                        child: Text(
                      'Checkout',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
