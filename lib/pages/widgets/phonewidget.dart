import 'package:cybershop/pages/Homepage.dart';
import 'package:cybershop/pages/buypage.dart';
import 'package:cybershop/pages/phonecatalog.dart';
import 'package:cybershop/pages/widgets/phonecat.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class phonewidget extends StatelessWidget {
  final Item item;

  const phonewidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(

      child: Row(
        children: [
          Hero(
              tag: Key(item.id.toString()),
              child: Image.network(item.image,height: 80,).px12()),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item.name),
              ButtonBar(
                children: [
                  "\ rs ${item.price}".text.make().py1(),
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Themes.Blueish)),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => buypage(buy: item)));
                  }, child: Text("Buy",style: TextStyle(color: Colors.white),))
                ],
              )
            ],
          ))
        ]
      )
    ).white.rounded.square(150).make().py32();
  }
}
