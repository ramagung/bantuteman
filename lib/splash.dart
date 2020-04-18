import 'package:flutter/material.dart';

import 'halhome.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Text("Find Diskriminan", style: TextStyle(fontSize: 30, color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: RaisedButton(
                    child: Text("Mulai"),
                    color: Colors.yellow,
                    onPressed: (){
                     Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return HalHome();
                      }));
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}