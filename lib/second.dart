import 'package:flutter/material.dart';



class tic extends StatefulWidget {
  const tic({Key? key}) : super(key: key);

  @override
  State<tic> createState() => _ticState();
}

class _ticState extends State<tic> {
  List l = ["", "", "", "", "", "", "", "", ""];
  String run = " Game is Runing ";
  int cnt = 1;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,


          title: Text("Tic Toc Toe",style: TextStyle(fontSize: 30),)),
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
                              Expanded(child:  Container(
                                height: 50,
                                width: 500,
                                color: Colors.lightBlue,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10, right: 5),
                                child: Text("${run}",style: TextStyle(fontSize: 20),),
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
                          onTap: () {
                            if(l[0]=='') {
                              if (cnt % 2 == 0) {
                                l[0] = 'x';
                                win();
                              }
                              else {
                                l[0] = '0';
                                win();
                              }
                              cnt++;
                            }
                            // o ke x print karva value refreace karavi (setState)
                            setState(() {});
                          },
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
                          onTap: () {
                            if(l[1]=='')
                            {
                              if (cnt % 2 == 0)
                              {
                                l[1] = 'x';
                                win();
                              }
                              else
                              {
                                l[1] = '0';
                                win();
                              }
                              cnt++;
                            }

                            setState(() {});
                          },
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
                          onTap: () {

                            if(l[2]=='')
                            {
                              if (cnt % 2 == 0)
                              {
                                l[2] = 'x';
                                win();
                              }
                              else
                              {
                                l[2] = '0';
                                win();
                              }
                              cnt++;
                            }

                            setState(() {});
                          },
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
                            onTap: () {
                              if(l[3]=='')
                              {
                                if (cnt % 2 == 0)
                                {
                                  l[3] = 'x';
                                  win();
                                }
                                else
                                {
                                  l[3] = '0';
                                  win();
                                }
                                cnt++;
                              }

                              setState(() {});
                            },
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
                            onTap: () {
                              if(l[4]=='')
                              {
                                if (cnt % 2 == 0)
                                {
                                  l[4] = 'x';
                                  win();
                                }
                                else
                                {
                                  l[4] = '0';
                                  win();
                                }
                                cnt++;
                              }

                              setState(() {});
                            },
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
                            onTap: () {
                              if(l[5]=='')
                              {
                                if (cnt % 2 == 0)
                                {
                                  l[5] = 'x';
                                  win();
                                }
                                else
                                {
                                  l[5] = '0';
                                  win();
                                }
                                cnt++;
                              }

                              setState(() {});
                            },
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
                            onTap: () {
                              if(l[6]=='')
                              {
                                if (cnt % 2 == 0)
                                {
                                  l[6] = 'x';
                                  win();
                                }
                                else
                                {
                                  l[6] = '0';
                                  win();
                                }
                                cnt++;
                              }

                              setState(() {});
                            },
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
                            onTap: () {
                              if(l[7]=='')
                              {
                                if (cnt % 2 == 0)
                                {
                                  l[7] = 'x';
                                  win();
                                }
                                else
                                {
                                  l[7] = '0';
                                  win();
                                }
                                cnt++;
                              }

                              setState(() {});
                            },
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
                            onTap: () {
                              if(l[8]=='')
                              {
                                if (cnt % 2 == 0)
                                {
                                  l[8] = 'x';
                                  win();
                                }
                                else
                                {
                                  l[8] = '0';
                                  win();
                                }
                                cnt++;
                              }

                              setState(() {});
                            },

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
                            cnt=1;

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
        ));
    }
}
