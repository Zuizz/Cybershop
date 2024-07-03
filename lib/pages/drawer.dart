import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';


class csdrawer extends StatelessWidget {
  const csdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

      shadowColor: Themes.creamColor,
      child: Container(
        color: Themes.Blueish,
        child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Themes.Blueish
            ),
            margin: EdgeInsets.zero,
            accountName: Text("Zuizz",style: TextStyle(color: Themes.creamColor),),
            accountEmail: Text("zuizzm1@gmail.com",style: TextStyle(color: Themes.creamColor)),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/avatar.png'),
            ),
          ),),
          ListTile(
            leading: Icon(CupertinoIcons.settings,color: Themes.creamColor,),
            title: Text("Settings",style: TextStyle(color: Themes.creamColor),),
          ),
        ],
      )
    ));
  }
}
