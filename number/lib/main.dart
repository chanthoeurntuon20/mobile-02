import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:number/counter.dart';

void main() => runApp(Demo());
class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar( 
          title: Text("Counter App"),
        ),
        body: Counter(),
      ),
    );
  }
}