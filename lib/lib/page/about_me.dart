import 'package:flutter/material.dart';
import 'package:app_sqflite2/sqflite2.dart';



class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("About Me"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange,
                            image: DecorationImage(image: AssetImage('images/Agung.jpg'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              color: Colors.white,
              child: Column(

                children: <Widget>[
                  SizedBox(height: 20),
                  Text('Anak Agung Adi Rama Anggrapana',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  SizedBox(height: 5,child: Container(
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('AnakAgungAdiRamaAnggrapan@gmail.com',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.orange.withOpacity(0.6)
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 30, right: 50, left: 50),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrange),
                            //color: Colors.green,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),

                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.my_location,
                                    color: Colors.blue,
                                    size: 58),
                                Text('Bangli',
                                  style: TextStyle
                                    (color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                  ), )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            //color: Colors.green,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.home, color: Colors.orangeAccent, size: 58,),
                                Text('Bangli', style: TextStyle
                                  (color: Colors.black54,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(

                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            color: Colors.white,
                            //color: Colors.green ,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),


                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.music_note,color: Colors.purple, size: 58,),
                                Text('Rock', style: TextStyle
                                  (color: Colors.black54,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(

                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.school, color: Colors.redAccent , size: 58,),
                                Text('Undiksha',style: TextStyle
                                  (color: Colors.black54,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
