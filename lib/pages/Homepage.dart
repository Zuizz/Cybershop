import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/hpslide.dart';
import 'package:cybershop/pages/phonecatalog.dart';
import 'package:cybershop/pages/widgets/phonecat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';




class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      drawer: csdrawer(),
      body:
          ListView(
            padding: EdgeInsets.only(top: 15),
                  children: [
                    Text("Hello Zuizz!",style: TextStyle(
                        fontSize: 30
                    ),),
                    Padding(padding: EdgeInsets.only(bottom: 200)),
                    slide(),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => phonecatalog()));
                          },

                        child: Padding(padding: EdgeInsets.only(right: 60,left: 30),
                        child: Card(
                          color: Colors.green,
                        elevation: 60,
                        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                        child: Icon(CupertinoIcons.device_phone_portrait,size: 80,)
                        ),),),
                        Padding(padding: EdgeInsets.only(right: 60),
                        child: Card(
                            color: Colors.green,
                            elevation: 50,
                            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                            child: Icon(CupertinoIcons.device_laptop,size: 80,)
                        ),),

                        Card(
                              color: Colors.green,
                              elevation: 50,
                              shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                              child: Icon(CupertinoIcons.device_desktop,size: 80,)
                          ),


                      ],
                    )
      ]
      ),
    );
  }
}
