import 'package:flutter/material.dart';

import '../model/item.dart';
import '../provider/cart.dart';
import '../shared/constantColors.dart';
import "package:provider/provider.dart";

class Details extends StatefulWidget {
  Item product;
  Details(this.product, {super.key});

  @override
  State<Details> createState() => _MyDetailsPageScreen();
}

class _MyDetailsPageScreen extends State<Details> {
  bool isShowMore = true;
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Cart>(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text("Details Screen"),
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
        child: Column(children: [
          Image.asset(
            "${widget.product.imgPath}",
            width: double.infinity,
            fit: BoxFit.cover,
            height: 300,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "\$${widget.product.price}",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 60,
                height: 40,
                child: Text(
                  "New",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 23,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 23,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 23,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 23,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 23,
                  ),
                ],
              ),
              SizedBox(
                width: 26,
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit_location,
                    color: Colors.red,
                  ),
                  Text(
                    "${widget.product.location}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
              width: double.infinity,
              child: Text("Details : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold))),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                maxLines: isShowMore ? 3 : null,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing"),
          ),
          SizedBox(
            height: 12,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(isShowMore ? "Show More" : "Show Less",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
        ]),
      ),
    ));
  }
}
