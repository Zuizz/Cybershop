import 'package:cybershop/pages/drawer.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(Homepage());
}



class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: csdrawer(),
    );
  }
}
