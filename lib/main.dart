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
 Widget build(context) {
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
  Color color = Theme.of(context).primaryColor;

Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  ),
);

Widget textSection = Container(
  padding: EdgeInsets.all(32.0),
  child: Text(
     'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
     softWrap: true,
  ),
);
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
          buttonSection,
          textSection
        ]),
      ),
    );
  }
  

  Column _buildButtonColumn(Color color, IconData icon, String label){
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


