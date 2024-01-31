// ignore_for_file: prefer_const_constructors

import "package:e_comarce_shop/provider/cart.dart";
import "package:flutter/material.dart";

import "../model/item.dart";
import "../shared/constantColors.dart";
import "checkOut.dart";
import "details.dart";
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        appBar: AppBar(
          backgroundColor: appbarGreen,
          title: const Text("Home"),
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckOut()));
                        },
                        icon: Icon(Icons.add_shopping_cart_sharp)),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.amber[300]),
                        child: Text(
                          "${product.selectedProducts.length}",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Text(
                    "\$${product.price}",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/background.jfif"),
                                fit: BoxFit.cover)),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avater.jfif"),
                          radius: 55,
                        ),
                        accountName: Text(
                          "Ahmed Elmasry",
                          style: TextStyle(fontSize: 18),
                        ),
                        accountEmail: Text(
                          "www.AhmedElmasry@gmail.com",
                          style: TextStyle(fontSize: 18),
                        )),
                    ListTile(
                        selected: true,
                        title: Text("Home"),
                        leading: Icon(Icons.home),
                        onTap: () {}),
                    ListTile(
                        title: Text("My Product"),
                        leading: Icon(Icons.add_shopping_cart),
                        onTap: () {}),
                    ListTile(
                        title: Text("About"),
                        leading: Icon(Icons.help_center),
                        onTap: () {}),
                    ListTile(
                        title: Text("Logout"),
                        leading: Icon(Icons.exit_to_app),
                        onTap: () {}),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Text(
                    "Developed By Ahmed Elmasry",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 2),
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(items[index])));
                      },
                      child: GridTile(
                          footer: GridTileBar(
                            backgroundColor: Colors.black26,
                            leading: Text(
                              "\$${items[index].price}",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                product.add(items[index]);
                              },
                              icon: Icon(Icons.add),
                              iconSize: 35,
                              color: Color.fromARGB(255, 62, 22, 14),
                            ),
                            title: Text(""),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: -3,
                                right: 0,
                                left: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(33),
                                  child: Image.asset(
                                    "${items[index].imgPath}",
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    )),
          ),
        ),
      ),
    );
  }
}
