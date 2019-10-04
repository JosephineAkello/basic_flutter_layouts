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
    Widget titleSection = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Kisumu Finest',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text('Kisumu, Kenya',
              style: TextStyle(color:
              Colors.grey)),
            ],
          ),
          
        ),
        Icon(Icons.star,
        color: Colors.red,),
        Text('40')
      ],
    ),

  );
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

}