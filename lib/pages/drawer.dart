import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class csdrawer extends StatelessWidget {
  const csdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shadowColor: MyTheme.creamColor,
      child: Container(
        color: MyTheme.Blueish,
        child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: MyTheme.Blueish
            ),
            margin: EdgeInsets.zero,
            accountName: Text("Zuizz",style: TextStyle(color: MyTheme.creamColor),),
            accountEmail: Text("zuizzm1@gmail.com",style: TextStyle(color: MyTheme.creamColor)),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/avatar.png'),
            ),
          ),),
          ListTile(
            leading: Icon(CupertinoIcons.settings,color: MyTheme.creamColor,),
            title: Text("Settings",style: TextStyle(color: MyTheme.creamColor),),
          ),
        ],
      )
    ));
  }
}
