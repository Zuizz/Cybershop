import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/hpslide.dart';
import 'package:cybershop/pages/lapcatalog.dart';
import 'package:cybershop/pages/phonecatalog.dart';

import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';





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

                    Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/disp/69f08d97315723.5ec2893224822.png',height:500,),

                    Padding(padding: EdgeInsets.only(bottom: 5)),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => lapcatalog()));
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
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => lapcatalog()));
                          },

                          child: Padding(padding: EdgeInsets.only(right: 60,),
                            child: Card(
                                color: Colors.white,
                                elevation: 200,
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                child: Image.asset('assets/icons/laptop.png',height: 80,)
                            ),),),
                      ],
                    )

      ]
      ),
    );
  }
}
