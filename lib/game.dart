import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {

  @override

  List<String> l = List.filled(9, "");

  List<String> vallist = [];
  List<int> poslist = [];

  List<String> r_vallist = [];
  List<int> r_poslist = [];

  String p1 = "X";
  String p2 = "O";

  int cnt = 0;
  bool winner = false;
  String msg = "Game is running";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tiktoy"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 30,
            width: double.infinity,
            child: Text(
              msg,
              style: TextStyle(fontSize: 30),
            ),
          ),
          // InkWell(
          //   onTap: (){
          //     l = List.filled(9, "");
          //     cnt = 0;
          //     winner = false;
          //     msg = "Game is running";
          //     setState(() {});
          //   },
          //   child: Container(
          //     alignment: Alignment.center,
          //     height: 50,
          //     width: double.infinity,
          //   ),
          // ),
          Expanded(child: Row(
            children: [
              allButtons(0),
              allButtons(1),
              allButtons(2),
            ],
          ),),
          Expanded(child: Row(
            children: [
              allButtons(3),
              allButtons(4),
              allButtons(5),
            ],
          ),),
          Expanded(child: Row(
            children: [
              allButtons(6),
              allButtons(7),
              allButtons(8),
            ],
          ),),
          Row(
            children: [
              Expanded(child: ElevatedButton(onPressed: () {
                if (poslist.length > 0) {
                  int lastpos = poslist.last;
                  String lastval = vallist.last;

                  l[lastpos] = "";
                  cnt--;

                  poslist.removeLast();
                  vallist.removeLast();

                  r_poslist.add(lastpos);
                  r_vallist.add(lastval);
                  print(game);

                  print("${poslist}    ${vallist}");
                  setState(() {

                  });
                }
                else {
                  print("Invalid");
                }
              }, child: Text("Undo")),
              ),
              Expanded(child: ElevatedButton(onPressed: () {
                l = List.filled(9, "");
                cnt = 0;
                int lastpos = poslist.last;
                String lastval = vallist.last;
                poslist.clear();
                vallist.clear();
                r_poslist.clear();
                r_vallist.clear();

                setState(() {});
                winner=false;
              },
                  child: Text("Reset")),
              ),
              Expanded(child: ElevatedButton(onPressed: () {
                if (r_vallist.length > 0) {
                  int lastpos = r_poslist.last;
                  String lastval = r_vallist.last;

                  l[lastpos] = lastval;
                  cnt++;

                  r_vallist.removeLast();
                  r_poslist.removeLast();

                  poslist.add(lastpos);
                  vallist.add(lastval);

                  print("${poslist}     ${vallist}");
                  setState(() {

                  });
                }
              }, child: Text("Redo")),
              ),
            ],
          )
        ],
      ),
    );
  }

  allButtons(int i) {
    return Expanded(child: InkWell(
      onTap: (l[i] == "" && winner == false) ? () {
        if (cnt % 2 == 0) {
          l[i] = p1;
          vallist.add(p1);
          win();
        } else {
          l[i] = p2;
          vallist.add(p2);
          win();
        }
        poslist.add(i);

        print("${poslist}   ${vallist}");
        cnt++;


        setState(() {});
      }
          :null,
      child: Container(
        color: l[i] == "" ? Colors.yellow : (l[i] == p1
            ? Colors.orangeAccent
            : Colors.lightGreen),
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          l[i],
          style: TextStyle(fontSize: 50),
        ),
      ),
    ));
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
