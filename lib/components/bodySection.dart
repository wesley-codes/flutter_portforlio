import 'package:flutter/material.dart';
import 'package:web_pofolio/Responsive.dart';
import 'package:web_pofolio/views/DesktopView.dart';
import 'package:web_pofolio/views/MobileView.dart';

class BodySection extends StatefulWidget {
  BodySection({Key key}) : super(key: key);

  @override
  _BodySectionState createState() => _BodySectionState();
}

class _BodySectionState extends State<BodySection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Responsive.isDesktop(context)
          ? EdgeInsets.only(left: 110)
          : Responsive.isMobile(context)
              ? EdgeInsets.only(left: 0, right: 0)
              : null,
      child: (Responsive.isDesktop(context))
          ? DesktopView()
          : Responsive.isMobile(context)?MobileScreen():Responsive.isTablet(context),
    );
  }
}

class Words extends StatelessWidget {
  final String title;
  final double size;
  final FontWeight weight;
  const Words({this.title, this.weight, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: weight, fontSize: size),
    );
  }
}
