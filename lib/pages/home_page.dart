import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _itemList("assets/images/img1.jpg"),
          _itemList("assets/images/img1.jpg"),
          _itemList("assets/images/img1.jpg"),
        ],
      ),
    );
  }

  Widget _itemList(img) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          )),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.2),
              ])),
          child: Padding(
            padding: EdgeInsets.only(left: 20,bottom: 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "PDP Online",
                style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );
  }
}
