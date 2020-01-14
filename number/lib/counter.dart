import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter> {
    
   int counter  = 0;
  Image _image;
   void ingrease(){
   setState(() {
     counter++;
     switch (counter) {
       case 5:
         _image = Image.network("http://p16-tiktokcdn-com.akamaized.net/obj/v0201/0o158b52j5crsootdfib00006852070v0200016a05",fit: BoxFit.cover,height: 400.0,width: 500.0,);
         break;
       case 10:
         _image = Image.network("https://pbs.twimg.com/media/C1QkVa0WQAA7WQU.jpg");
         break;
       default:
     }
   });
 }

 void degrease(){
   setState(() {
     counter--;
      switch (counter) {
       case 3:
         _image = Image.network("https://i.pinimg.com/originals/44/a5/30/44a53070060227c533c01e44cb024b77.jpg",fit: BoxFit.cover,height: 400.0,width: 500.0,);
         break;
       case 4:
         _image = Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRYFrrsdU5RHsze3A3Aax31RkFVYLUfpmXrCvnzvkvPxSC5SASZ",fit: BoxFit.cover,height: 400.0,width: 500.0,);
         break;
      
       default:
     }
   });
 }
  @override
  Widget build(BuildContext context) {
    return Center( 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: _image,
              ),
            Text("${counter}",style: TextStyle(fontSize: 50.0),),
            Row( 
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              FloatingActionButton(
                    backgroundColor: Colors.green,
                    onPressed: (){ingrease();},
                    child: Icon(Icons.add),
                  ),
                  SizedBox(width: 30.0,),
                 FloatingActionButton(
                     backgroundColor: Colors.red,
                    onPressed: (){degrease();},
                    child: Icon(Icons.remove),
                  ),
              ],
            )
            ],
          ),
        );
  }
}