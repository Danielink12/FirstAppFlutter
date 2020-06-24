import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto =  new TextStyle(fontSize: 25);
  int numero=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("awebo se pudo el skafol"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de clicks", style: estiloTexto,),
            Text("$numero" , style: estiloTexto,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5.0 ,
        child: Icon(Icons.add),
        onPressed: (){
          numero = numero+1;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}