import 'package:cybershop/pages/widgets/lapcat.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cybershop/pages/widgets/phonecat.dart' ;
import 'package:velocity_x/velocity_x.dart';


class lapbuypage extends StatelessWidget {
  final Laptop buy;
  const lapbuypage({super.key, required this.buy});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,),
        body: Column(
          children: [
            Hero(
                tag: Key(buy.id.toString()),
                child: Image.network(buy.image).p16().h32(context)),
            Expanded(child: VxArc(
              height: 20,
              edge: VxEdge.top,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      buy.name.text.xl4.fontFamily('poppins').make(),
                      Text(buy.Features,textAlign: TextAlign.justify,style: TextStyle(fontSize: 17,color: Colors.blueGrey,fontFamily: 'poppins'),)
                    ],
                  ).p16(),
                ),
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
