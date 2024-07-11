
import 'package:cybershop/data/tabcat.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class tabbuypage extends StatelessWidget {
  final Tabb buy;
  const tabbuypage({super.key, required this.buy});

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
                tag: Key(buy.Id.toString()),
                child: Image.network(buy.Image).p16().h32(context)),
            Expanded(child: VxArc(
              height: 20,
              edge: VxEdge.top,
              arcType: VxArcType.convey,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      buy.Name.text.xl4.fontFamily('poppins').make(),
                      Text(buy.Features,textAlign: TextAlign.justify,style: const TextStyle(fontSize: 17,color: Colors.blueGrey,fontFamily: 'poppins'),)
                    ],
                  ).p16(),
                ),
              ),
            )
            )
          ],
        ).color(Vx.red50),
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            " rs ${buy.Price}".text.xl2.bold.make(),
            ElevatedButton(onPressed: (){},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.Blueish)), child: const Text("Buy",style: TextStyle(color: Colors.white),),
            ).wh(100, 60)
          ],
        ).h(100),
      ),
    );
  }
}
