import 'package:flutter/material.dart';

void main() {
  runApp(TestSafeArea());
}

class TestSafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(home: SafeAreaHomgePage()));
  }
}

class SafeAreaHomgePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return (SafeAreaHomgePageSate());
  }
}

class SafeAreaHomgePageSate extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
        body: SafeArea(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text('Test thu 1'),
            Expanded(flex: 1,child: Text('Test thu 2')),
            Text('Test thu 3'),
            SizedBox(width: 200,height: 200,child: Image.asset('assets/hinh_test.jpg')),
            SizedBox(width: 200,height: 200,child: Image.asset('assets/images/hinh_test_2.jpg')),
          ],
        ),
      ),
    )));
  }
}
