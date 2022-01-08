class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "sohaib001",
      name: "IPhone 13 Pro",
      desc: "Apple Iphone 13th generation",
      price: 240000,
      color: "#33505a",
      image:
          "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-13-pro-max-01.jpg")
];
