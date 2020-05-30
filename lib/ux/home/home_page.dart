import 'package:flutter/material.dart';
import 'package:flutter_first_app_balcoder/utils/widgets/custom_container.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: incrementarContador,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomContainer(title: '', count: contador),
        ),
      ),
    );
  }
}
