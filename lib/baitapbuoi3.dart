import 'package:flutter/material.dart';

void main() {
  runApp(MyBaiTap());
}

class MyBaiTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: BaiTapHomePage());
  }
}

class BaiTapHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BaiTapHomePageSate();
  }
}

class BaiTapHomePageSate extends State<BaiTapHomePage> {
  num kqTinh = 0;
  String so1 = '';
  String so2 = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Bai tap buoi 3'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ket qua: $kqTinh',
                style: TextStyle(backgroundColor: Colors.yellow, fontSize: 20),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextField(
                    onChanged: (text) {
                      so1 = text;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Nhap so A:'),
                  )),
                  SizedBox(width: 20),
                  Expanded(
                      child: TextField(
                          onChanged: (text) {
                            so2 = text;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Nhap so B:')))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        kqTinh = num.parse(so1) + num.parse(so2);
                        setState(() {});
                      },
                      child: Text('+')),
                  ElevatedButton(
                      onPressed: () {
                        kqTinh = num.parse(so1) - num.parse(so2);
                        setState(() {});
                      },
                      child: Text('-')),
                  ElevatedButton(
                      onPressed: () {
                        kqTinh = num.parse(so1) * num.parse(so2);
                        setState(() {});
                      },
                      child: Text('*')),
                  ElevatedButton(
                      onPressed: () {
                        double kq = num.parse(so1) / num.parse(so2);
                        kqTinh = num.parse(kq.toStringAsFixed(2));
                        setState(() {});
                      },
                      child: Text('/'))
                ],
              )
            ],
          ),
        ));
  }
}
