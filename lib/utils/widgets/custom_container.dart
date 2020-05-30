import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({this.title, this.count});

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.5,
      width: width * 0.7,
      decoration: BoxDecoration(
          // : si no , ? if
          color: count == 3 ? Colors.red : Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            Text(count >= 3 ? "Hello World!" : count.toString(),
                style: TextStyle(color: Colors.white, fontSize: width * 0.2))
          ],
        ),
      ),
    );
  }
}
