import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List l=[];
  int cnt=0;

  @override
  void initState() {
    // TODO: implement initState
    l=List.filled(9, "");
   // print("hello");
  }
  get(int pos)
  {
    setState(() {
      if(cnt%2==0)
        {
          l[pos]="x";
        }
      else
        {
          l[pos]="0";
        }
      cnt++;

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(onTap:() => get(0),
                    child: Container(
                margin: EdgeInsets.all(5),
                height: double.infinity,
                width: double.infinity,
                color: Colors.grey,
                child: Text("${l[0]}"),
                      alignment: Alignment.center,
              ),
                  )),
              Expanded(
                  child: InkWell(onTap:() => get(1),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[1]}"),
                      alignment: Alignment.center,
                    ),
                  )),
              Expanded(
                  child: InkWell(onTap:() => get(2),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text("${l[2]}"),
                      alignment: Alignment.center,
                    ),
                  )),

            ],
          )),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(onTap:() => get(3),
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.grey,
                          child: Text("${l[3]}"),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(onTap:() => get(4),
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.grey,
                          child: Text("${l[4]}"),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(onTap:() => get(5),
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.grey,
                          child: Text("${l[5]}"),
                          alignment: Alignment.center,
                        ),
                      )),

                ],
              )),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(onTap:() => get(6),
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.grey,
                          child: Text("${l[6]}"),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(onTap:() => get(7),
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.grey,
                          child: Text("${l[7]}"),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(onTap:() => get(8),
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.grey,
                          child: Text("${l[8]}"),
                          alignment: Alignment.center,
                        ),
                      )),

                ],
              )),


        ],
      ),
    );
  }
}
