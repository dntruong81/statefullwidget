import 'package:flutter/material.dart';
void main() {
  runApp(StackTest());
}

class StackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(home: StackTestHomgePage()));
  }
}

class StackTestHomgePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return (StackTestHomgePageSate());
  }
}

class StackTestHomgePageSate extends State<StackTestHomgePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Container(
                    width: 100,
                    height:100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.yellow,
                  )
                ],
              )
            ],
          ),
        ),
      )
    ));
  }
}
