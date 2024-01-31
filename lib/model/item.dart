class Item {
  String imgPath = "";
  double price = 0;
  String location = "";
  String productName = "";
  Item(this.productName, this.imgPath, this.price,
      [this.location = "Flower Shop"]);
}

List<Item> items = [
  Item("Product 1", "assets/images/6.jfif", 22.99, "Ahmed Shop"),
  Item("Product 2", "assets/images/2.jfif", 15.99),
  Item("Product 3", "assets/images/7.jfif", 21.99),
  Item("Product 4", "assets/images/1.jfif", 12.99),
  Item("Product 5", "assets/images/9.jfif", 33.99),
  Item("Product 6", "assets/images/8.jfif", 30.99),
  Item("Product 7", "assets/images/4.jfif", 20.99),
  Item("Product 8", "assets/images/5.jfif", 15.99),
];
