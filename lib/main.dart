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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Lession 4'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('So lan an nut: '),
            Text('$counter', style: Theme.of(context).textTheme.headlineMedium),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    'https://api.mobifone.vn/images/subscriptiontypes/1618473491399_1608447502044_Rectangle.png',width: 100,height: 100,),
                ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Nut duoc bam Click Me')));
                }, child: Text('Click Me'))
              ],
            )
          ],
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
