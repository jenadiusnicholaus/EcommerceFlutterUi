import 'package:daddyfood/pages/cart.dart';
import 'package:daddyfood/widget/latestfood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _navPage = [
    LatestFood(),
    CartPage(),
    Center(
      child: Text(
        'Index 2: School',
        style: optionStyle,
      ),
    ),
  ];

  void _onButtonTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        leading: IconButton(
          iconSize: 40.0,
          icon: Icon(Icons.food_bank_sharp, color: Colors.amber[800]),
          onPressed: () {},
        ),
        title: Center(
            child: Text(
          'Daddy food',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        )),
        actions: [
          IconButton(
              iconSize: 40.0,
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.amber[800],
              ),
              onPressed: () {}),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(child: _navPage.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Cart', icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onButtonTapped,
      ),
    );
  }
}
