import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({Key? key}) : super(key: key);

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List l = List.filled(9, "");
  int cnt = 0;
  int i = 0;
  bool winner = true;
  String p1 = "X";
  String p2 = "0";
  String msg = "Game is runing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Game"),),
      body:

          GridView.builder(
              itemCount: l.length,
              itemBuilder: (context, int i) {
                return InkWell(
                  onTap: () {
                    get(i);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                    child: Text(
                      "${l[i]}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10)),

         

    );
  }

  get(int i) {
    setState(() {
      if (l[i] == "" && winner) {
        l[i] = '0';
        cnt++;
      } else if (!winner && l[i] == "") {
        l[i] = 'X';
        cnt++;
      }
      winner = !winner;
    });
  }

  win() {
    if ((l[0] == p1 && l[1] == p1 && l[2] == p1) ||
        (l[3] == p1 && l[4] == p1 && l[5] == p1) ||
        (l[6] == p1 && l[7] == p1 && l[8] == p1) ||
        (l[0] == p1 && l[3] == p1 && l[6] == p1) ||
        (l[1] == p1 && l[4] == p1 && l[7] == p1) ||
        (l[2] == p1 && l[5] == p1 && l[8] == p1) ||
        (l[0] == p1 && l[4] == p1 && l[8] == p1) ||
        (l[2] == p1 && l[4] == p1 && l[6] == p1)) {
      msg = "$p1 is winner";
      winner = true;
    } else if ((l[0] == p2 && l[1] == p2 && l[2] == p2) ||
        (l[3] == p2 && l[4] == p2 && l[5] == p2) ||
        (l[6] == p2 && l[7] == p2 && l[8] == p2) ||
        (l[0] == p2 && l[3] == p2 && l[6] == p2) ||
        (l[1] == p2 && l[4] == p2 && l[7] == p2) ||
        (l[2] == p2 && l[5] == p2 && l[8] == p2) ||
        (l[0] == p2 && l[4] == p2 && l[8] == p2) ||
        (l[2] == p2 && l[4] == p2 && l[6] == p2)) {
      msg = "$p2 is winner";
      winner = true;
    } else if (cnt < 0) {
      msg = "Game is  over";
    }
  }
}
