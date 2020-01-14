
import 'package:flutter/material.dart';

void main() => runApp(RealMobile());

  class RealMobile extends StatefulWidget {
    @override
    _RealMobileState createState() => _RealMobileState();
  }
  
  class _RealMobileState extends State<RealMobile> {
    var _isRefresh = true;
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold( 
          appBar: AppBar( 
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  setState(() {
                   _isRefresh = false; 
                  });
                },
                icon: Icon(Icons.refresh,  color: Colors.white,size: 30.0,),
              ),
              IconButton( 
                onPressed: () {
                  setState(() {
                    _isRefresh = true;
                  });
                },
                icon: Icon(Icons.star),
              )
            ],
            title: Text("Demo Real Apps"),
          ),
          body: Center( 
            child: _isRefresh? CircularProgressIndicator(): Text("Finished loading..."),
          ),
        ),
      );
    }
  }

