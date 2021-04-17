import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => new _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloText = new TextStyle(fontSize: 20);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        centerTitle: true,
        elevation: 25,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de taps: ',
              style: _estiloText,
            ),
            Text(
              '$_conteo',
              style: _estiloText,
            ),
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
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _agregar,
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: _sustraer,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }

  void _agregar() => setState(() => _conteo++);

  void _sustraer() => setState(() => _conteo--);

  void _reset() => setState(() => _conteo = 0);
}
