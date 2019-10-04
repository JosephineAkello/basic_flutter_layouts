import 'package:flutter/material.dart';

void main(){
  runApp(LayoutApp());
}

class LayoutApp extends StatefulWidget{
  createState(){
    return LayoutAppState();
  }
}
class LayoutAppState extends State<LayoutApp>{
  Widget build(context){
    return MaterialApp(
      title: 'Flutter layout Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout Example'),
        ),
        body: Center(
          child: Text('HelloWorld'),
        ),
      ),
    );
  }
  Widget titleSection = Container(

  );
}