import 'package:cybershop/pages/Homepage.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(Cybershop());
}



class Cybershop extends StatelessWidget {
  const Cybershop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
