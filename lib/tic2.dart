//import 'dart:html';
import 'dart:math';

//import 'package:demo/random_tictac.dart';

import 'package:flutter/material.dart';




class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List l = [];
  int cnt = 1,
      k = 0;
  List<bool> temp = [];

  @override
  void initState() {
    l = List.filled(9, "");
    temp = List.filled(9, false);
  }

  get(int pos) {
    temp[pos] = true;
    if (cnt % 2 == 0) {
      l[pos] = "0";
    }
    else {
      l[pos] = "X";
    }
    cnt++;
    win();
  }

  String run = "game is running";

  win() {
    if (l[0] == "0" && l[1] == "0" && l[2] == "0" ||
        l[3] == "0" && l[4] == "0" && l[5] == "0" ||
        l[0] == "0" && l[3] == "0" && l[6] == "0" ||
        l[1] == "0" && l[4] == "0" && l[7] == "0" ||
        l[2] == "0" && l[5] == "0" && l[8] == "0" ||
        l[6] == "0" && l[7] == "0" && l[8] == "0" ||
        l[0] == "0" && l[4] == "0" && l[8] == "0" ||
        l[2] == "0" && l[4] == "0" && l[6] == "0") {
      run = "0 is win";
      temp = List.filled(9, true);
    } else if (l[0] == "X" && l[1] == "X" && l[2] == "X" ||
        l[3] == "X" && l[4] == "X" && l[5] == "X" ||
        l[0] == "X" && l[3] == "X" && l[6] == "X" ||
        l[1] == "X" && l[4] == "X" && l[7] == "X" ||
        l[2] == "X" && l[5] == "X" && l[8] == "X" ||
        l[6] == "X" && l[7] == "X" && l[8] == "X" ||
        l[0] == "X" && l[4] == "X" && l[8] == "X" ||
        l[2] == "X" && l[4] == "X" && l[6] == "X") {
      run = "X is win";
      temp = List.filled(9, true);
    } else
    if (l[0] != "" && l[1] != "" && l[2] != "" && l[3] != "" && l[4] != "" &&
        l[5] != "" && l[6] != "" && l[7] != "" && l[8] != "") {
      run = "math draw";
    }

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("app")),
        body: Column(
            children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Text("${run}"),
                  )),
              Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                            onTap: () => (temp[0] == false ? get(0) : null),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text("${l[0]}"),
                            ),
                          )),
                      Expanded(
                          child: InkWell(
                              onTap: () => (temp[1] == false ? get(1) : null),
                              child: Container(
                                margin: EdgeInsets.all(5),
                                width: double.infinity,
                                height: double.infinity,
                                color: Colors.grey,
                                alignment: Alignment.center,
                                child: Text("${l[1]}"),
                              ))),
                      Expanded(
                          child: InkWell(
                            onTap: () => (temp[2] == false ? get(2) : null),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text("${l[2]}"),
                            ),
                          ))
                    ],
                  )),
              Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                            onTap: () => (temp[3] == false ? get(3) : null),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text("${l[3]}"),
                            ),
                          )),
                      Expanded(
                          child: InkWell(
                              onTap: () => (temp[4] == false ? get(4) : null),
                              child: Container(
                                margin: EdgeInsets.all(5),
                                width: double.infinity,
                                height: double.infinity,
                                color: Colors.grey,
                                alignment: Alignment.center,
                                child: Text("${l[4]}"),
                              ))),
                      Expanded(
                          child: InkWell(
                            onTap: () => (temp[5] == false ? get(5) : null),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text("${l[5]}"),
                            ),
                          ))
                    ],
                  )),
              Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                            onTap: () => (temp[6] == false ? get(6) : null),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text("${l[6]}"),
                            ),
                          )),
                      Expanded(
                          child: InkWell(
                              onTap: () => (temp[7] == false ? get(7) : null),
                              child: Container(
                                margin: EdgeInsets.all(5),
                                width: double.infinity,
                                height: double.infinity,
                                color: Colors.grey,
                                alignment: Alignment.center,
                                child: Text("${l[7]}"),
                              ))),
                      Expanded(
                          child: InkWell(
                            onTap: () => (temp[8] == false ? get(8) : null),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text("${l[8]}"),
                            ),
                          )),
                    ],
                  )),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        run = "";
                        setState(() {
                          l = List.filled(9, "");
                          cnt = 1;
                          temp = List.filled(9, false);
                          k = 0;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        height: 50,
                        width: double.infinity,
                        color: Colors.grey,
                        child: Text("RESET"),
                      )))
            ],
        ),
    );
  }
}