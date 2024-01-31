import 'package:e_comarce_shop/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/constantColors.dart';

class CheckOut extends StatefulWidget {
  @override
  State<CheckOut> createState() => _MyCheckOutState();
}

class _MyCheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Cart>(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text("Checkout Screen"),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  IconButton(
                      onPressed: () {},
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
                padding: EdgeInsets.only(right: 13),
                child: Text(
                  "\$${product.price}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 600,
              child: ListView.builder(
                itemCount: product.selectedProducts.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(
                      "${product.selectedProducts[index].productName}",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "${product.selectedProducts[index].price} - ${product.selectedProducts[index].location}",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            "${product.selectedProducts[index].imgPath}")),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.remove,
                        size: 22,
                      ),
                      onPressed: () {
                        product.delete(product.selectedProducts[index]);
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 350),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(btnPink),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Pay \$${product.price}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
