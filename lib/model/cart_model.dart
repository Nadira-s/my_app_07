import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of item on sale
  final List _shopItems = [
    // [itemName, itemPrice, imagePath , color]
    ["Avocado", "4.00", "assets/avacado.png", Colors.green],
    ["Banana", "2.50", "assets/banana.png", Colors.yellow],
    ["Chicken", "12.80", "assets/chicken.png", Colors.brown],
    ["Water", "4.00", "assets/bottle.png", Colors.blue],
  ];

  // list of cart list
  List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart
  void removeItemToCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
    //calculate total price
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
