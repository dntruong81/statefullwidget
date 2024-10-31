import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(ExpandTest());
}

class ExpandTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: ExpandPage());
  }
}

class ExpandPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpandPageSate();
  }
}

class ExpandPageSate extends State<ExpandPage> {
  List<Color> listMau = [
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.deepOrange
  ];
  int dem = 0;
  int soNgaunhien = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: listMau[soNgaunhien],
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  dem++;
                  if (dem%2 == 0){
                    soNgaunhien = Random().nextInt(listMau.length);
                  }
                  setState(() {

                  });
                },
                child: Text('Hay an tui'))
          ],
        ),
      ),
    );
  }
}
