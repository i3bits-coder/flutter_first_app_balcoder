import 'package:flutter/material.dart';
import 'package:flutter_first_app_balcoder/utils/widgets/custom_container.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.item});
  final String item;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _tabIndex;
  TabController _tabController;
  int contador = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabIndex = 0;

    _tabController =
        new TabController(length: 2, initialIndex: _tabIndex, vsync: this);
  }

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
        bottom: TabBar(
          tabs: [
            Tab(
              child: Icon(Icons.mood),
            ),
            Tab(
              child: Icon(Icons.shop_two),
            )
          ],
          controller: _tabController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: incrementarContador,
      ),
      body: Center(
        child: TabBarView(
          controller: _tabController,
          children: [
            CustomContainer(
              title: 'Numero 1',
              count: contador,
            ),
            CustomContainer(
              title: 'Numero 2',
              count: contador,
            )
          ],
        ),
      ),
    );
  }
}
