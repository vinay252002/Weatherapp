import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String name;
  final String temp;

  Item({required this.name,required this.temp});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      height: 160,
      width: 160,
      child: Card(
        elevation: 5,
        child: Wrap(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25),
              alignment: Alignment.center,
              child: Text(
                '$temp',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 45,
                ),
              ),
            ),
            ListTile(
              title: Text("$name"),
              subtitle: Text('Sunset'),
            ),
          ],
        ),
      ),
    );
  }
}
