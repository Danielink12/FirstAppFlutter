import 'package:flutter/material.dart';
import 'package:flutterappvs/src/pages/contador_page.dart';
//import 'package:flutterappvs/src/pages/home_page.dart';

class MyApp extends StatelessWidget{

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: new ContadorPage() ,) 
    );
  }

}