import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "La vuelta",
        home: MyHomePage(
          item: 'La Propia APP',
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.item});
  final String item;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int contador = 0;

  void incrementarContador() {
    setState(() {
      contador = contador + 1;
    });
  }

  void resetcontador() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Has presionado el botón:"),
            Text(contador.toString())
          ],
        ),
      ),
      floatingActionButton: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:0, left:0, right:0, bottom:0),
          child: Column(
            children: <Widget>[
              FloatingActionButton(
                child: Icon(Icons.plus_one),
                onPressed: incrementarContador,
              ),
              FloatingActionButton(
                child: Icon(Icons.restore),
                onPressed: resetcontador,
              )
            ],
          ),
        ),
      ),
    );
  }
}
