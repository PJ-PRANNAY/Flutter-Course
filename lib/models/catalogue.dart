class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
      id: "Veda1",
      name: "Sweater",
      desc: "This is A Sweater",
      price: 1200,
      color: "#33505a",
      image: "assets/products/1a.jpg")
];
