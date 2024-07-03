import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/hpslide.dart';
import 'package:cybershop/pages/phonecatalog.dart';
import 'package:cybershop/pages/widgets/phonecat.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';




class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.creamColor,
      appBar: AppBar(backgroundColor: Themes.Blueish,iconTheme: IconThemeData(color: Themes.creamColor),),
      drawer: csdrawer(),
      body:
          ListView(
            padding: EdgeInsets.only(top: 15),
                  children: [
                    Text("Hello Zuizz!",style: TextStyle(
                        fontSize: 30,fontFamily: 'poppins',
                    ),),
                    Text("Welcome to CyberShop",style: TextStyle(fontSize: 20,fontFamily: 'pixel'),),
                    Padding(padding: EdgeInsets.only(bottom: 130)),
                    slide(),
                    Row(
                      children: [
                        GestureDetector(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => phonecatalog()));
                        },

                      child: Padding(padding: EdgeInsets.only(right: 60,left: 30),
                        child: Card(
                          color: Colors.white,
                            elevation: 200,
                              shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                            child: Image.asset('assets/icons/mobile.png',height: 80,)
                              ),),),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => phonecatalog()));
                          },

                          child: Padding(padding: EdgeInsets.only(right: 60,),
                            child: Card(
                                color: Colors.white,
                                elevation: 200,
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                child: Image.asset('assets/icons/laptop.png',height: 80,)
                            ),),),

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
