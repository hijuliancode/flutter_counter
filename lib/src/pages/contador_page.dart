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
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {

          print('Hola mundo!');
          _conteo++;

          setState(() {});
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

