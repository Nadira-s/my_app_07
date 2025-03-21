import 'package:flutter/material.dart';
import 'package:my_app_7/model/cart_model.dart';
import 'package:my_app_7/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}
