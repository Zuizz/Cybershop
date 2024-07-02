import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';


class csdrawer extends StatelessWidget {
  const csdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.brown,
        child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.brown
            ),
            margin: EdgeInsets.zero,
            accountName: Text("Zuizz",style: TextStyle(color: Colors.black),),
            accountEmail: Text("zuizzm1@gmail.com",style: TextStyle(color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/avatar.png'),
            ),
          ),),
          ListTile(
            leading: Icon(CupertinoIcons.settings,color: Colors.black,),
            title: Text("Settings",style: TextStyle(color: Colors.black),),
          ),
        ],
      )
    ));
  }
}
