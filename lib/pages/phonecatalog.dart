
import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/widgets/phonecat.dart';
import 'package:cybershop/pages/widgets/phonewidget.dart';
import 'package:flutter/material.dart';

// final List<Phone> phones =
// [
//   Phone(id: 1, name: "Iphone 12", price: 999, image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg"),
//   Phone(id: 1, name: "Iphone 12", price: 999, image: "https://img.jabko.ua/image/cache/catalog/111/iph-15-pr0full.jpg")
// ];
//
// class Phone{
//   final int id;
//   final String name;
//   final num price;
//   final String image;
//
//   Phone({required this.id, required this.name, required this.price, required this.image});
//
//
//
// }

class phonecatalog extends StatelessWidget {
  const phonecatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: csdrawer(),
        appBar: AppBar(title: Text("Phones"),backgroundColor: Colors.blue,),
        body:
            Padding(padding: EdgeInsets.all(15),
        child :ListView.builder(
            itemCount: catalog.items.length,
            itemBuilder: (context , index)
            {
              return phonewidget(item: catalog.items[index]);
            }
        ),
      ),)
    );
  }
}
