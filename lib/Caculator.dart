import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyCaculator());
}

class MyCaculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: MyCaculatorPage());
  }
}

class MyCaculatorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCaculatorpageState();
  }
}

class MyCaculatorpageState extends State<MyCaculatorPage> {
  num soA = 0;
  num soB = 0;
  num soC = 0;
  num kq = 0;
  bool isNguyenTo(num n){
    if (n< 2)
      return false;

    for(int i = 2; i<= sqrt(n);i++)
      if (n%i ==0) return false;

    return true;
  }
  String kqCheck = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ket qua: $kq',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
                width: 150,
                child: TextField(
                  onChanged: (text) {
                    soA = int.parse(text);
                  },
                  decoration: InputDecoration(hintText: 'Nhap so A'),
                )),
            SizedBox(
                width: 150,
                child: TextField(
                  onChanged: (text) {
                    soB = int.parse(text);
                  },
                  decoration: InputDecoration(hintText: 'Nhap so B'),
                )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kq = soA + soB;
                      });
                    },
                    child: Text('+')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kq = soA - soB;
                      });
                    },
                    child: Text('-')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kq = soA * soB;
                      });
                    },
                    child: Text('*')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kq = soA / soB;
                      });
                    },
                    child: Text('/')),
              ],
            ),
            SizedBox(
                width: 150,
                child: TextField(
                  onChanged: (text) {
                    soC = int.parse(text);
                  },
                  decoration: InputDecoration(hintText: 'Nhap so C'),
                )),
            Text('$kqCheck'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (isNguyenTo(soC))
                      kqCheck = '$soC la so nguyen to';
                    else kqCheck = '$soC khong phai so nguyen to';

                  });
                },
                child: Text('Check NT')),
          ],
        ),
      )),
    );
  }
}
