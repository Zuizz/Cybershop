
import 'package:cybershop/pages/buypage.dart';
import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/widgets/phonecat.dart';
import 'package:cybershop/pages/widgets/phonewidget.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';

class phonecatalog extends StatelessWidget {
  const phonecatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Themes.creamColor,
        appBar: AppBar(title: Text("Phones"),),
        drawer: csdrawer(),
        body:
            Padding(padding: EdgeInsets.all(15),
        child :ListView.builder(
            itemCount: catalog.items.length,
            itemBuilder: (context , index)
            {
              final buy = catalog.items[index];
              return InkWell(
                child: phonewidget(item: buy),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => buypage(buy: buy)));
              },
              );
            }
        ),
      ),)
    );
  }
}
