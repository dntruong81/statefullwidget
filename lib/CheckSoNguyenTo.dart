import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(SoNguyenTo());
}

class SoNguyenTo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(home: SoNguyenToPage()));
  }
}

class SoNguyenToPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return (SoNguyenToPageSate());
  }
}

class SoNguyenToPageSate extends State<SoNguyenToPage> {
  String soNhap = '';
  String kqCheck = '';

  bool isNguyenTo(num n) {
    if (n < 2) return false;
    for (num i = 2; i <= sqrt(n); i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Kiem tra so nguyen to'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 200,
                    child: TextField(
                      decoration:
                          InputDecoration(hintText: 'Nhap so can check:'),
                      onChanged: (text) {
                        soNhap = text;
                      },
                    )),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: 300,
                    child: Text(
                      'Ket qua: $kqCheck',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      bool kq = false;
                      kq = isNguyenTo(num.parse(soNhap));
                      if (kq)
                        kqCheck = '${num.parse(soNhap)} la so nguyen to';
                      else
                        kqCheck =
                            '${num.parse(soNhap)} khong phai so nguyen to';

                      setState(() {});
                    },
                    child: Text('Kiem tra'))
              ],
            ),
          ),
        )));
  }
}
