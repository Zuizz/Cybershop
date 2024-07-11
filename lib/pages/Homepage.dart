import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/earpodcatalog.dart';
import 'package:cybershop/pages/hpslide.dart';
import 'package:cybershop/pages/lapcatalog.dart';
import 'package:cybershop/pages/phonecatalog.dart';
import 'package:cybershop/pages/speakercatalog.dart';
import 'package:cybershop/pages/tabcatalog.dart';

import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';





class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      right: true,
      child: Scaffold(
        backgroundColor: MyTheme.creamColor,
        appBar: AppBar(backgroundColor: Colors.transparent,iconTheme: IconThemeData(color: MyTheme.Blueish),),
        drawer: csdrawer(),
        body:
        ListView(
          scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(top: 15),
                      children: [

                        const Text("Hello Zuizz!",style: TextStyle(
                            fontSize: 30,fontFamily: 'poppins',
                        ),),
                        const Text("Welcome to CyberShop",style: TextStyle(fontSize: 20,fontFamily: 'pixel'),),
                        Padding(padding: EdgeInsets.only(top: 10),child: Text("Featured Device: ",style: TextStyle(fontFamily: 'poppins',),),),
                                Image.network('https://th.bing.com/th/id/OIP.XwE_pO2cJENELWH8hQ5bPwHaEK?rs=1&pid=ImgDetMain',height: 300,),


                      Padding(padding: EdgeInsets.only(bottom: 0)),

                        Text("Categories",style: TextStyle(fontFamily: 'poppins',fontSize: 25),textAlign: TextAlign.center,),
                        Padding(padding: EdgeInsets.only(bottom: 30)),
                        Row(
                          children: [
                            GestureDetector(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const phonecatalog()));
                            },

                          child: Padding(padding: const EdgeInsets.only(right: 30,left: 30),
                            child: Card(
                              color: Colors.white,
                                elevation: 200,
                                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                child: Image.asset('assets/icons/mobile.png',height: 90,)
                                  ),),),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => lapcatalog()));
                              },

                              child: Padding(padding: const EdgeInsets.only(right: 40,),
                                child: Card(
                                    color: Colors.white,
                                    elevation: 200,
                                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                    child: Image.asset('assets/icons/laptop.png',height: 90,)
                                ),),),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => tabcatalog()));
                              },

                              child: Padding(padding: const EdgeInsets.only(right: 40,),
                                child: Card(
                                    color: Colors.white,
                                    elevation: 200,
                                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                    child: Image.asset('assets/icons/tablet.png',height: 90,)
                                ),),),

                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const earpodcatalog()));
                              },

                              child: Padding(padding: const EdgeInsets.only(top: 60,left:60 ),
                                child: Card(
                                    color: Colors.white,
                                    elevation: 200,
                                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                    child: Image.asset('assets/icons/earphone.png',height: 90,)
                                ),),),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const speakercatalog()));
                              },

                              child: Padding(padding: const EdgeInsets.only(top: 60,left:110 ),
                                child: Card(
                                    color: Colors.white,
                                    elevation: 200,
                                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                    child: Image.asset('assets/icons/speaker.png',height: 90,)
                                ),),),
                          ],
                        )

                    ]
                    ),
      ),
    );
  }
}
