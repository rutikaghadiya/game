
 import 'dart:math';

 import 'package:flutter/material.dart';


 class puzzles extends StatefulWidget {
   const puzzles({Key? key}) : super(key: key);

   @override
   State<puzzles> createState() => _puzzlesState();
 }

 class _puzzlesState extends State<puzzles> {

   List l = [];
   // List l=[1,'',3,4,5,6,7,8,2];
   int i=0,t=0;
   @override
   void initState() {
     super.initState();

        for(int i=0;i<9;i++)
          {
            t=Random().nextInt(9);
            print(t);


             if(!l.contains(t))
               {
                  l.add(t);
               }
             else
               {
                 i--;
               }
          }
        for(int i=0;i<l.length;i++)
          {

            print("hello");
             if(l[i]==0)
               {
                  l[i]="";
               }
          }
        setState(() {

        });
        print(l);


   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(title: Text("PAZZLE"),),
         body: Column(
           children: [
             Expanded(child: Row(
               children: [
                 Expanded(child:  InkWell(
                   onTap: (){
                     setState(() {
                       if(l[1]=="")
                       {
                         l[1] = l[0];
                         l[0] = "";
                       }
                       if(l[3]=="")
                       {
                         l[3] = l[0];
                         l[0] = "";
                       }
                     });

                   },
                   child: Container(
                     alignment: Alignment.center,
                     width: 100,
                     height: 130,
                     color: Colors.teal,
                     margin: EdgeInsets.all(10),
                     child: Text(
                       "${l[0]}",
                       style: TextStyle(color: Colors.black,fontSize: 25),
                     ),

                   ),
                 ),),
                 Expanded(child:  InkWell(
                   onTap: (){
                     setState(() {
                       if(l[0]=='')
                       {
                         l[0] = l[1];
                         l[1] = '';
                       }
                       if(l[2]=='')
                       {
                         l[2]=l[1];
                         l[1]='';
                       }
                       if(l[4]=='')
                       {
                         l[4]=l[1];
                         l[1]='';
                       }
                     });
                   },
                   child: Container(
                     alignment: Alignment.center,
                     width: 100,
                     height: 130,
                     color: Colors.teal,
                     margin: EdgeInsets.all(10),
                     child: Text(
                       "${l[1]}",
                       style: TextStyle(color: Colors.black,fontSize: 25),
                     ),

                   ),
                 ),),
                 Expanded(child:  InkWell(
                   onTap: (){
                     // setState(() {
                     //   if(l[1]=='')
                     //   {
                     //     l[1] = l[2];
                     //     l[2] = '';
                     //   }
                     //   if(l[5]=='')
                     //   {
                     //     l[5] = l[2];
                     //     l[2] = '';
                     //   }
                     // });

                   },
                   child: Container(
                     alignment: Alignment.center,
                     width: 100,
                     height: 130,
                     color: Colors.teal,
                     margin: EdgeInsets.all(10),
                     child: Text(
                       "${l[2]}",
                       style: TextStyle(color: Colors.black,fontSize: 25),
                     ),

                   ),
                 ),),
               ],
             )),
             Expanded(child: Row(
               children: [
                 Expanded(child:  InkWell(
                   onTap: (){
                     // setState(() {
                     //   if(l[0]=='')
                     //   {
                     //     l[0] = l[3];
                     //     l[3] = '';
                     //   }
                     //   if(l[4]=='')
                     //   {
                     //     l[4] = l[3];
                     //     l[3] = '';
                     //   }
                     //   if(l[6]=='')
                     //   {
                     //     l[6] = l[3];
                     //     l[3] = '';
                     //   }
                     // });

                   },
                   child: Container(
                     alignment: Alignment.center,
                     width: 100,
                     height: 130,
                     color: Colors.teal,
                     margin: EdgeInsets.all(10),
                     child: Text(
                       "${l[3]}",
                       style: TextStyle(color: Colors.black,fontSize: 25),
                     ),

                   ),
                 ),),
                 Expanded(child:  InkWell(
                   onTap: (){
                     // setState(() {
                     //   if(l[1]=='')
                     //   {
                     //     l[1] = l[4];
                     //     l[4] = '';
                     //   }
                     //   if(l[3]=='')
                     //   {
                     //     l[3] = l[4];
                     //     l[4] = '';
                     //   }
                     //   if(l[5]=='')
                     //   {
                     //     l[5] = l[4];
                     //     l[4] = '';
                     //   }
                     //   if(l[7]=='')
                     //   {
                     //     l[7] = l[4];
                     //     l[4] = '';
                     //   }
                     // });
                   },
                   child: Container(
                     alignment: Alignment.center,
                     width: 100,
                     height: 130,
                     color: Colors.teal,
                     margin: EdgeInsets.all(10),
                     child: Text(
                       "${l[4]}",
                       style: TextStyle(color: Colors.black,fontSize: 25),
                     ),

                   ),
                 ),),
                 Expanded(child:  InkWell(
                   onTap: (){
                     // setState(() {
                     //   if(l[2]=='')
                     //   {
                     //     l[2] = l[5];
                     //     l[5] = '';
                     //   }
                     //   if(l[4]=='')
                     //   {
                     //     l[4] = l[5];
                     //     l[5] = '';
                     //   }
                     //   if(l[8]=='')
                     //   {
                     //     l[8] = l[5];
                     //     l[5] = '';
                     //   }
                     // });
                   },
                   child: Container(
                     alignment: Alignment.center,
                     width: 100,
                     height: 130,
                     color: Colors.teal,
                     margin: EdgeInsets.all(10),
                     child: Text(
                       "${l[5]}",
                       style: TextStyle(color: Colors.black,fontSize: 25),
                     ),

                   ),
                 ),),
               ],
             )),
             Expanded(child: Row(
               children: [
                 Expanded(child:  InkWell(
                   onTap: (){
                     // setState(() {
                     //   if(l[3]=='')
                     //   {
                     //     l[3] = l[6];
                     //     l[6] = '';
                     //   }
                     //   if(l[7]=='')
                     //   {
                     //     l[7] = l[6];
                     //     l[6] = '';
                     //   }
                     // });
                   },
                   child: Container(
                     alignment: Alignment.center,
                     width: 100,
                     height: 130,
                     color: Colors.teal,
                     margin: EdgeInsets.all(10),
                     child: Text(
                       "${l[6]}",
                       style: TextStyle(color: Colors.black,fontSize: 25),
                     ),

                   ),
                 ),),
                 Expanded(child:  InkWell(
                   onTap: (){
                     // setState(() {
                     //   if(l[4]=='')
                     //   {
                     //     l[4] = l[7];
                     //     l[7] = '';
                     //   }
                     //   if(l[6]=='')
                     //   {
                     //     l[6] = l[7];
                     //     l[7] = '';
                     //   }
                     //   if(l[8]=='')
                     //   {
                     //     l[8] = l[7];
                     //     l[7] = '';
                     //   }
                     // });
                   },
                   child: Container(
                     alignment: Alignment.center,
                     width: 100,
                     height: 130,
                     color: Colors.teal,
                     margin: EdgeInsets.all(10),
                     child: Text(
                       "${l[7]}",
                       style: TextStyle(color: Colors.black,fontSize: 25),
                     ),

                   ),
                 ),),
                 Expanded(child:  InkWell(
                   onTap: (){
                     // setState(() {
                     //   if(l[5]=='')
                     //   {
                     //     l[5] = l[8];
                     //     l[8] = '';
                     //   }
                     //   if(l[7]=='')
                     //   {
                     //     l[7] = l[8];
                     //     l[8] = '';
                     //   }
                     // });
                   },
                   child: Container(
                     alignment: Alignment.center,
                     width: 100,
                     height: 130,
                     color: Colors.teal,
                     margin: EdgeInsets.all(10),
                     child: Text(
                       "${l[8]}",
                       style: TextStyle(color: Colors.black,fontSize: 25),
                     ),

                   ),
                 ),),
               ],
             )),
             ////

             Expanded(child: Row(
               children: [
                 Expanded(child: InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return puzzles();
                     },));
                   },
                   child: Container(
                     width: double.infinity,
                     height: double.infinity,
                     alignment: Alignment.center,
                     margin: EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.lightGreenAccent,
                     ),
                     child: Text("Reset",style: TextStyle(fontSize: 35),),
                   ),
                 ))
               ],
             ))
           ],
         ),
         );
     }


 }
