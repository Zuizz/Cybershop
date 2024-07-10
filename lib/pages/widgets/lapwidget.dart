import 'package:cybershop/pages/buypage.dart';
import 'package:cybershop/pages/buypages/lapbuy.dart';
import 'package:cybershop/pages/widgets/lapcat.dart';
import 'package:cybershop/pages/widgets/lapwidget.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class lapwidget extends StatelessWidget {
  final Laptop laptop;

  const lapwidget({super.key, required this.laptop}) : assert(laptop != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(

        child: Row(
            children: [
              Hero(
                  tag: Key(laptop.id.toString()),
                  child: Image.network(laptop.image,height: 80,).px12()),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(laptop.name),
                  ButtonBar(
                    children: [
                      "\ rs ${laptop.price}".text.make().py1(),
                      ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Themes.Blueish)),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => lapbuypage(buy: laptop)));
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
