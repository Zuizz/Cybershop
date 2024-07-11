import 'package:cybershop/pages/Homepage.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(const Cybershop());
}



class Cybershop extends StatelessWidget {
  const Cybershop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.system,
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
