import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cybershop/pages/widgets/phonecat.dart' ;
import 'package:velocity_x/velocity_x.dart';


class buypage extends StatelessWidget {
  final Item buy;
  const buypage({super.key, required this.buy});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Hero(
              tag: Key(buy.id.toString()),
                child: Image.network(buy.image).p16().h32(context)),
            Expanded(child: VxArc(
              height: 10,
              edge: VxEdge.top,
              child: Container(
                width: context.screenWidth,
                child: Column(
                  children: [
                    buy.name.text.xl4.make(),
                  ],
                ).py16(),
              ),
              arcType: VxArcType.convey,
            )
            )
          ],
        ).color(Vx.red50),
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\ rs ${buy.price}".text.xl2.bold.make(),
            ElevatedButton(onPressed: (){}, child: Text("Buy",style: TextStyle(color: Colors.white),),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Themes.Blueish)),
            ).wh(100, 60)
          ],
        ).h(100),
      ),
    );
  }
}
