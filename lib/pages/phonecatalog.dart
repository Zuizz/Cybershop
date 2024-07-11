
import 'package:cybershop/data/phonecat.dart';
import 'package:cybershop/pages/buypage.dart';
import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/widgets/phonewidget.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';

class phonecatalog extends StatelessWidget {
  const phonecatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: MyTheme.creamColor,
        appBar: AppBar(title: const Text("Phones"),),
        drawer: const csdrawer(),
        body:
            Padding(padding: const EdgeInsets.all(15),
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
      ),
      ),
          debugShowCheckedModeBanner: false,
    );
  }
}
