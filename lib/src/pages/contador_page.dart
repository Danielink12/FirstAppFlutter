import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  createState() => ContadorPageState();

}

class ContadorPageState extends State<ContadorPage>{
  
  TextStyle estiloTexto =  new TextStyle(fontSize: 25);
  int numero=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("awebo se pudo el skafol"),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de clicks", style: estiloTexto,),
            Text("$numero" , style: estiloTexto,),
          ],
        ),
      ),
      floatingActionButton: _CrearBotones(),
    );
  }

  Widget _CrearBotones(){

    return Row(
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero) ,onPressed: reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove) ,onPressed: sustraer),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add) ,onPressed: agregar)

      ],
    );

  }

  void agregar(){
    setState(() => numero++);
  }

  void sustraer(){
    setState(() => numero--);
  }

  void reset(){
    setState(() => numero=0);
  }

}