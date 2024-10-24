import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageSate();
  }
}

class MyHomePageSate extends State<MyHomePage> {
  int counter = 0;
  String valueTextField = '';
  TextEditingController controller = TextEditingController();
  List<Color> listMau = [Colors.red,Colors.blue,Colors.green,Colors.yellow];
  Color mau = Colors.green;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: mau,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Lession 4: UI'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('So lan an nut: '),
              Text('$counter',
                  style: Theme.of(context).textTheme.headlineMedium),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextField(
                          controller: controller,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'TextField in Row'))),
                  SizedBox(
                    width: 1,
                  ),
                  Image.network(
                    'https://api.mobifone.vn/images/subscriptiontypes/1618473491399_1608447502044_Rectangle.png',
                    width: 60,
                    height: 100,
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(controller.text)));
                        }
                      },
                      child: Text('Click Me')),
                  ElevatedButton(
                      onPressed: () {
                        {
                          //Nhan vao doi mau nen
                          mau = listMau[Random().nextInt(listMau.length)];
                        }
                        setState(() {

                        });
                      },
                      child: Text('Doi mau'))
                ],
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a search term'),
                  onChanged: (text) {
                    valueTextField = text;
                  }),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
