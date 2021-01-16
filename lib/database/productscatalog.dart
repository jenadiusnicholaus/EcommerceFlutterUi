import 'package:daddyfood/models/products.dart';

//Todays Deals
final Product bugger = Product(
    id: 0,
    title: 'bugger',
    imageUrl: 'assets/images/bugger.jpeg',
    price: '200',
    items: '12');

final Product hotdog = Product(
    id: 1,
    title: 'Hotdog',
    imageUrl: 'assets/images/hotdog.jpeg',
    price: '200',
    items: '12');

final Product chips = Product(
    id: 2,
    title: 'Chips',
    imageUrl: 'assets/images/chips.jpeg',
    price: '200',
    items: '12');
final Product chichen = Product(
    id: 3,
    title: 'chichen',
    imageUrl: 'assets/images/chichen.jpeg',
    price: '200',
    items: '12');

final Product coffee = Product(
    id: 4,
    title: 'Coffee',
    imageUrl: 'assets/images/coffe.jpeg',
    price: '200',
    items: '12');

//get list of products

List<Product> products = [bugger, chips, chichen, hotdog, coffee];
double total = 0;

double getTotal() {
  for (int itemCouunter = 0; itemCouunter <= products.length; itemCouunter++) {
    total = total * int.parse(products[itemCouunter].price);
  }
  return total;
}
