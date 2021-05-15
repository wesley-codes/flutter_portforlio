import 'package:flutter/material.dart';

import 'package:web_pofolio/Responsive.dart';
import 'package:web_pofolio/components/bodySection.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
   
      body: SafeArea(
        child: Container(child: BodySection()),
      ),
    );
  }
}

// ignore: camel_case_types
class appBarText extends StatefulWidget {
  final String title;
  final Color color;
  const appBarText({this.title, this.color});

  @override
  _appBarTextState createState() => _appBarTextState();
}

class _appBarTextState extends State<appBarText> {
 

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        widget.title,
        // style: TextStyle(
        //     decoration: TextDecoration.underline,
        //     decorationThickness: 3,
        //     decorationColor: Colors.white),
      ),
    );
  }
}
