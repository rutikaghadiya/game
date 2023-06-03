import 'dart:math';

import 'package:flutter/material.dart';

class pra extends StatefulWidget {
  const pra({Key? key}) : super(key: key);

  @override
  State<pra> createState() => _praState();
}

class _praState extends State<pra> {

  List l=List.filled(9, "");
 String run="";

 List<bool> tmp=List.filled(9, true);
  int j=0;

  int k=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${run}"),),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
                    onTap:() =>tmp[0]?fun(0):null,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[0]}"),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap:() => tmp[1]?fun(1):null,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[1]}"),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () => tmp[2]?fun(2):null,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[2]}"),
                    ),
                  )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
                  onTap: () => tmp[3]?fun(3):null,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[3]}"),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                  onTap: () => fun(4),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[4]}"),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                  onTap: () => fun(5),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[5]}"),
                    ),
                  )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
                    onTap: () => fun(6),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[6]}"),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                 onTap: () => fun(7),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[7]}"),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                   onTap: () => fun(8),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[8]}"),
                    ),
                  )),
            ],
          )),
        ],
      ),
    );
  }

  fun(int i)
  {

    k++;
       l[i]="x";
       tmp[i]=false;


   if(k<5)
     {
       while(true)
       {
         j=Random().nextInt(9);
         if(l[j]=="")
         {
           l[j]="0";
           tmp[j]=false;
           break;
         }
       }


     }
    win();

       setState(() {

       });
  }

  win()
  {
    if (l[0] == '0' && l[1] == '0' && l[2] == '0' ||
        l[3] == '0' && l[4] == '0' && l[5] == '0' ||
        l[6] == '0' && l[7] == '0' && l[8] == '0' ||
        l[0] == '0' && l[3] == '0' && l[6] == '0' ||
        l[1] == '0' && l[4] == '0' && l[7] == '0' ||
        l[2] == '0' && l[5] == '0' && l[8] == '0' ||
        l[0] == '0' && l[4] == '0' && l[8] == '0' ||
        l[2] == '0' && l[4] == '0' && l[6] == '0')
    {
      run = "o is win";
           for(int i=0;i<9;i++)
             {
                  if(l[i]=="")
                    {
                        l[i]=" ";
                    }
             }

    }
    else if (l[0] == 'x' && l[1] == 'x' && l[2] == 'x' ||
        l[3] == 'x' && l[4] == 'x' && l[5] == 'x' ||
        l[6] == 'x' && l[7] == 'x' && l[8] == 'x' ||
        l[0] == 'x' && l[3] == 'x' && l[6] == 'x' ||
        l[1] == 'x' && l[4] == 'x' && l[7] == 'x' ||
        l[2] == 'x' && l[5] == 'x' && l[8] == 'x' ||
        l[0] == 'x' && l[4] == 'x' && l[8] == 'x' ||
        l[2] == 'x' && l[4] == 'x' && l[6] == 'x')
    {
      run = "x is win";
      print("good");

      for(int i=0;i<9;i++)
      {
        if(l[i]=="")
        {
          l[i]=" ";
        }
      }

    }

  }

}

