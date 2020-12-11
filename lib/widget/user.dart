import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,// Can giua
          children: <Widget>[
            CircleAvatar( //chinh anh
              radius: 60,
              backgroundImage: AssetImage('assets/images/anh.jpg'),
            ),
            Text("Phung Duc Huan",
              style: TextStyle(
                  fontFamily: "DancingScript",
                  fontSize: 30,
                  color: Colors.white),
            ),
            Text(
              "Van Thang, Dong Thinh, Song Lo, Vinh Phuc",
              style: TextStyle(
                  fontFamily: "DancingScript",
                  fontSize: 14, color: Colors.white),


            ),
            SizedBox(
              height: 16,
            ),
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                title: Text("+84 329 455 ***",
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blueAccent,
                ),
                title: Text("huanutehy1@gmail.com",
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                ),
              ),
            )
          ],
        ),)
      ,
    );
  }
}
