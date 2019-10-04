import 'package:flutter/material.dart';

void main() {
  runApp(LayoutApp());
}

class LayoutApp extends StatefulWidget {
  createState() {
    return LayoutAppState();
  }
}

class LayoutAppState extends State<LayoutApp> {
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text("Kisumu's, Kenya", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text('40')
      ],
    ),
  );
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo),
      title: 'Flutter layout Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout Example'),
        ),
        body: Column(children: [
          titleSection,
        ]),
      ),
    );
  }
  Column _buildColumns(Color color, IconData icon, String label){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color: color,),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(fontSize: 12,
            fontWeight: FontWeight.bold,color: color)
          ),
        )
      ],
    );
   
  }


}
