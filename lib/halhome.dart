import 'package:flutter/material.dart';

import 'about.dart';

class HalHome extends StatefulWidget {
  @override
  _HalHomeState createState() => _HalHomeState();
}

class _HalHomeState extends State<HalHome> {
  double d = 0.0;

//deklarasi kontroler
  TextEditingController _a = TextEditingController();
  TextEditingController _b = TextEditingController();
  TextEditingController _c = TextEditingController();

//fungsi untuk menghitung
  hitung() {
    double a = double.parse(_a.text);
    double b = double.parse(_b.text);
    double c = double.parse(_c.text);
    d = (b * b) - (4 * a * c);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Find Diskriminan"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Center(
                child: Container(
                  height: 150,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Diskriminan",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          d.toString(),
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: TextFormField(
                        controller: _a,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'nilai a', border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _b,
                        decoration: InputDecoration(
                            labelText: 'nilai b', border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        controller: _c,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'nilai c', border: OutlineInputBorder()),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30, bottom: 20),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: RaisedButton(
                        onPressed: () {
                          hitung();
                        },
                        child: Text(
                          "Hitung",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.black12,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AboutMe();
                          }));
                        },
                        child: Text(
                          "Tentang Saya",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
