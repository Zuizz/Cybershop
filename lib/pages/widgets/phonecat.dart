import 'package:cybershop/pages/widgets/phonecat.dart';
class catalog {
  static final items =
  [
    Item(id: 1,
        name: "Iphone 12",
        price: 999,
        image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
    Item(id: 2,
        name: "Iph",
        price: 1000,
        image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
    Item(id: 3,
        name: "Iphone 12",
        price: 999,
        image: "https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-s24-ultra-5g-sm-s928-1.jpg"),
    Item(id: 4,
        name: "Iphone 12",
        price: 999,
        image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
    Item(id: 5,
        name: "Iphone 12",
        price: 999,
        image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
    Item(id: 6,
        name: "Iphone 12",
        price: 999,
        image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
    Item(id: 7,
        name: "Iphone 12",
        price: 999,
        image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
    Item(id: 8,
        name: "Iphone 12",
        price: 999,
        image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
    Item(id: 9,
        name: "Iphone 12",
        price: 999,
        image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
    Item(id: 10,
        name: "Iphone 12",
        price: 999,
        image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
  ];
}
class Item{
  final int id;
  final String name;
  final num price;
  final String image;

  Item({required this.id, required this.name, required this.price, required this.image});



}