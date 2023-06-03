import 'package:flutter/material.dart';
import 'package:game/gridview.dart';
import 'package:game/pra.dart';

import 'demo.dart';
import 'game.dart';
import 'puzzles.dart';

import 'random2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Demo(),
  ));
}
class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Row(
      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            color: Colors.blue,
            child: Text("Submit",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}




