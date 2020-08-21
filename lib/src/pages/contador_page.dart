import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => new _ContadorPageState(); // El new es opcional
}


class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = TextStyle(fontSize: 26);

  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( 'Número de clicks', style: _estiloTexto),
            Text( '$_conteo', style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 15.0 ),
        FloatingActionButton(child: Icon( Icons.exposure_zero ), onPressed: null),
        Expanded( child: SizedBox() ),
        FloatingActionButton(child: Icon( Icons.remove ), onPressed: null),
        SizedBox( width: 5.0 ),
        FloatingActionButton(child: Icon( Icons.add ), onPressed: null),
        SizedBox( width: 15.0 ),
      ]
    );
  }
}

