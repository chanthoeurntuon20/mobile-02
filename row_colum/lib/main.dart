import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Demo());
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          title: Text("Morning"),
          leading: Container( 
            child: Icon(Icons.camera),
            margin: EdgeInsets.only(left: 20.0),
            
          ),
          actions: <Widget>[
            Container( 
              child: Icon(Icons.playlist_play,color: Colors.white,size: 30.0,),
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
            ),
            Container( 
              child: Icon(Icons.plus_one,color: Colors.white,size: 30.0,),
              margin: EdgeInsets.only(right: 20.0),
            ),
          ],
        ),
        body: ListView( 
          children: <Widget>[
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTkH-pQjX2o5njEtTBHbZAsnq9lk6IwqK-SDntkNHbf-bdHl4ML",
               fit: BoxFit.cover,   
               ),
            Container(  
            padding: EdgeInsets.all(20.0),
              child: Row(      
                children: <Widget>[
                  Expanded(
                    child: Column( 
                      children: <Widget>[
                        Text("Love PNC"),
                        SizedBox(height: 20.0,),
                        Text("The best school in Cambodia",
                          style: TextStyle( 
                            color: Colors.grey,
                          ),
                        ),  
                      ],
                    ),
                  ),
                  Icon(Icons.favorite_border,color: Colors.pink,),
                  SizedBox(width: 10.0,),
                  Text("2000")
                ],
              ),
            ),
            Container( 
              child: Row( 
               children: <Widget>[
                 Container( 
                   width: 200.0,
                   height: 40.0,
                   child: RaisedButton( 
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20.0)
                     ), 
                     color: Colors.purple,
                     child: Text("Share",style: TextStyle(color: Colors.white),),
                     onPressed: (){},
                   ),
                 ),
                 Container( 
                   width: 200.0,
                   height: 40.0,
                   child: RaisedButton( 
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20.0)
                     ), 
                     color: Colors.pink,
                     child: Text("Enjoy",style: TextStyle(color: Colors.white),),
                     onPressed: (){},
                   ),
                 ),
                
               ],
              ),
            ),
             Container( 
               padding: EdgeInsets.only(top: 20.0),
                   child: Row( 
                     children: <Widget>[
                       Image.network("https://i.mydramalist.com/rVN1pc.jpg",
                       fit: BoxFit.cover,
                       width: 200.0,
                       height: 200.0,
                       ),
                       Image.network("http://c8398308.r8.cf2.rackcdn.com/5541734_0_2b5f740507682b4c1f898445f30b56b6.jpg",
                       fit: BoxFit.cover,
                       width: 200.0,
                       height: 200.0,
                       ),
                     ],
                   ),
                 ),
                 Container( 
                   padding: EdgeInsets.all(20.0),
                   child: Card( 
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("It’s not as difficult as it sounds. In fact, the dominant color is the one used in different shades for a majority of things, it acts as the “default”. Accents are colors that look nice with the base-color but are only used sparingly so that it really draws attention. There shouldn’t be more than two accent colors in my experience, otherwise the design loses a clear visual direction."),
                     ),
                   ),
                 ),
                 Container( 
                   child: Row( 
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       CircleAvatar( 
                         radius: 50.0,
                        backgroundImage: NetworkImage('https://data.whicdn.com/images/131505856/superthumb.png?t=1407721697'),
                       ),
                       CircleAvatar( 
                         radius: 50.0,
                        backgroundImage: NetworkImage('https://data.whicdn.com/images/245087018/large.jpg'),
                       ),
                       CircleAvatar( 
                         radius: 50.0,
                        backgroundImage: NetworkImage('https://data.whicdn.com/images/140898572/superthumb.png?t=1412869145'),
                       ),
                      
                     ],
                   ),
                 )
          ],
        ),
        floatingActionButton: FloatingActionButton( 
           onPressed: (){},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
