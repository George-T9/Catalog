class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "IPhone 12 Pro Max",
      desc: "Gold,256GB Storage",
      price: 129900,
      color: '#33505a',
      image:
          "https://images-eu.ssl-images-amazon.com/images/I/41ixiUVfr0L._SY445_SX342_QL70_FMwebp_.jpg",
    ),
    Item(
      id: 2,
      name: "Redmi Note 10 Pro Max",
      desc: "Dark Night, 6GB RAM, 128GB Storage",
      price: 19999,
      color: '#33505a',
      image: "https://m.media-amazon.com/images/I/81Vpy0XrvFL._SL1500_.jpg",
    )
  ];
}

class Item {
  final int id;
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

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],

    );
  }

  toMap() => {
    "id": id,
    "name":name,
    "desc":desc,
    "price":price,
    "color":color,
    "image":image,

  };
}


