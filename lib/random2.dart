import 'dart:math';

import 'package:flutter/material.dart';

class random2 extends StatefulWidget {
  const random2({Key? key}) : super(key: key);

  @override
  State<random2> createState() => _random2State();
}

class _random2State extends State<random2> {
  List<String> l = List.filled(9, "");
  List<Color> color = List.filled(9, Colors.white);
  List<bool> temp=List.filled(9, true);
  String run = "Game is runing....";
  int cnt = 1;
  int j=0;
  int k=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(

                    child: Container(
                      height: 70,
                      width: 500,
                      color: Colors.indigo,
                      alignment: Alignment.center,

                      margin:
                      EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
                      // style: TextStyle(color: Colors.white,fontSize: 50),),

                      child: Row(
                        children: [
                          Expanded(child: Container(
                            height: 50,
                            width: 500,
                            color: Colors.lightBlue,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                left: 10, top: 10, bottom: 10, right: 5),
                            child: Text(
                              "${run}", style: TextStyle(fontSize: 20),),
                          ),),

                        ],
                      ),

                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: InkWell(
                     onTap: () => temp[0]?random(0):null,
                      child: Container(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.black,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 5, top: 5),
                          child: Text(
                            "${l[0]}",
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () => temp[1]?random(1):null,
                      child: Container(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.black,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 5, top: 5),
                          child: Text(
                            "${l[1]}",
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () => temp[2]?random(2):null,
                      child: Container(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.black,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                          child: Text(
                            "${l[2]}",
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: InkWell(
                        onTap: () => temp[3]?random(3):null,
                        child: Container(
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, left: 5),
                            child: Text(
                              "${l[3]}",
                              style:
                              TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: () => temp[4]?random(4):null,
                        child: Container(
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              "${l[4]}",
                              style:
                              TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: () => temp[5]?random(5):null,
                        child: Container(
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text(
                              "${l[5]}",
                              style:
                              TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: InkWell(
                        onTap: () => temp[6]?random(6):null,
                        child: Container(
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, left: 5),
                            child: Text(
                              "${l[6]}",
                              style:
                              TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: () => temp[7]?random(7):null,
                        child: Container(
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              "${l[7]}",
                              style:
                              TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: () => temp[8]?random(8):null,
                        child: Container(
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text(
                              "${l[8]}",
                              style:
                              TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),

          //-----------last----------------

          Container(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      //reset karva mate (badhi value clean  thy jay)
                      for(int i=0;i<9;i++)
                      {
                        l[i]="";
                        run="Start";
                        //reset kara pachi 0 thi start karva mate
                        temp=List.filled(9, true);
                        cnt=1;
                        k=0;
                        j=0;

                      }

                      setState(() {});
                    },
                    child: Container(
                      height: 70,
                      width: 500,
                      color: Colors.indigo,
                      alignment: Alignment.center,

                      margin:
                      EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
                      // style: TextStyle(color: Colors.white,fontSize: 50),),

                      child: Row(
                        children: [
                          Expanded(child:  Container(
                            height: 50,
                            width: 230,
                            color: Colors.grey,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                left: 10, top: 10, bottom: 10, right: 5),
                            child: Text("Reset",style: TextStyle(fontSize: 20),),
                          ),),
                          Expanded(child: Container(
                            height: 50,
                            width: 230,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                                left: 5, top: 10, bottom: 10, right: 10),
                          ))
                        ],
                      ),

                    ),
                  ),
                ),

              ],
            ),
          )


        ],
      ),
    );
  }



  random(int i)
  {
  k++;
    l[i]='x';
    temp[i]=false;


    if(k<5)
      {
        while(true) {
          j = Random().nextInt(9);
          if (l[j] == "") {
            l[j] = '0';
            temp[j] = false;
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
      print("hello");
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

// create get function
// then create list blank
// assign value x and 0
//  take while loop and other variable
// take other variable j
//