import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScaffoldEx extends StatelessWidget {
  const ScaffoldEx({Key key}) : super(key: key);

  pressed() {
    debugPrint("icon tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY PROFILE"),
        centerTitle: true,
        backgroundColor: Colors.teal.shade600,
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle_outlined), onPressed: pressed)
        ],
      ),
      floatingActionButton:  (FloatingActionButton(onPressed: ()=>debugPrint("tap"),
        backgroundColor: Colors.amber,
        child: Pop(),)),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add_location),label : ("location"),backgroundColor: Colors.teal),
        BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_rounded), label :("photo"),backgroundColor: Colors.teal),
        BottomNavigationBarItem(icon: Icon(Icons.add_comment_rounded), label :("comment")),
        BottomNavigationBarItem(icon: Icon(Icons.add_to_home_screen_rounded), label :("home"))
      ], onTap: (int index)=>debugPrint("tapped ($index)"),
        backgroundColor: Colors.teal,),

      backgroundColor: Colors.black87,
     body:
     Container(


          child:

            new Container(
              //alignment: Alignment.center,
              child :Stack (
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [SizedBox(height: 30,),
                        Text(" ADITI KAPOOR ",style: TextStyle(color:Colors.amber,fontWeight:FontWeight.bold,fontSize:50,
                        ),),
                        Text(" ~ Being the first version of oneself is important because there is only one of you",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
                          ,fontSize:20, fontFamily: 'Fon',),),
                        Text(" # Tech Enthusiast",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
                          ,fontSize:20, fontFamily: 'Fon',),),
                        Text(" # Undergrad student ",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
                          ,fontSize:20, fontFamily: 'Fon',),),
                        Text(" # Artist",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
                          ,fontSize:20, fontFamily: 'Fon',),),

                        SizedBox(height: 220,),
                        //Text(" hello",style: TextStyle(color:Colors.cyan,fontWeight:FontWeight.bold,fontSize:30,
                      // ),),
Table(
  defaultColumnWidth: FixedColumnWidth(200),
  border: TableBorder.all(color: Colors.grey,style: BorderStyle.solid,width: 2),

  children: [
    TableRow(
      children: [Column(children: [
        Text(" Educational Qualifications",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
          ,fontSize:20,),textAlign: TextAlign.left,)


      ],),
        Column(children: [
          Text(" B.Tech + MBA ",style: TextStyle(color:Colors.cyanAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
            ,fontSize:20,),textAlign: TextAlign.left),


        ],)
      ]

    ),
    TableRow(
        children: [Column(children: [
          Text("Work Experience",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
            ,fontSize:20,),textAlign: TextAlign.left),
        ],),
          Column(children: [
            Text("3 month internship at Google ",style: TextStyle(color:Colors.cyanAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
              ,fontSize:20,),)
        ],
    )
        ]
    ),
    TableRow(
        children: [Column(children: [
          Text("Skills and Abilities",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
            ,fontSize:20,),)
        ],),
      Column(children: [
      Text(" C++, flutter,python",style: TextStyle(color:Colors.cyanAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic
      ,fontSize:20,),)
    ],)]),

  ],
)
                      ],
                    ),
                    get(),

                    Row(mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        IconButton(constraints: BoxConstraints.tight(Size.fromWidth(150)),
                          icon:Icon( Icons.delete), onPressed: ()=>debugPrint("hi"),iconSize:55,color: Colors.red,),

                        IconButton(constraints: BoxConstraints.tight(Size.fromWidth(150)),
                          icon:Icon( Icons.add_a_photo), onPressed: ()=>debugPrint("hi"),iconSize:45,color: Colors.amber,),


                      ],
                    ),

                  ]
              ),),

          ),

    );}

  Container get()
  { return Container(

      width: 150,
      height: 150,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(80)),
          border: Border.all(color: Colors.teal, width: 3),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/200"),
              fit: BoxFit.cover)
      ),
    );
  }



}


class Pop extends StatelessWidget {
  const Pop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackbar= SnackBar(content: Text("Click here to Add to Your Profile"),);
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        child: Icon(Icons.add_circle_outline_rounded),

      ),
    );
  }
}