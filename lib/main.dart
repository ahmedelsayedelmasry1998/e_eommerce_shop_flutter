import 'package:e_comarce_shop/provider/cart.dart';
import 'package:e_comarce_shop/views/checkOut.dart';
import 'package:e_comarce_shop/views/details.dart';
import 'package:e_comarce_shop/views/home.dart';
import 'package:e_comarce_shop/views/login.dart';
import 'package:e_comarce_shop/views/registar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Hello World',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
