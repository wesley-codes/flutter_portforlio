import 'package:flutter/material.dart';

import 'package:web_pofolio/HomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      theme: ThemeData(
        
          textTheme: TextTheme(bodyText2: TextStyle(fontFamily: "Exo 2"))),
      builder: (context, widget) {
        return MediaQuery(
          //Setting font does not change with system font size
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget,
        );
      },
      home: Homepage(),
    );
  }
}
