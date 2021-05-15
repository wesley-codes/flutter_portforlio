// import 'package:flutter/material.dart';
// import 'package:web_pofolio/Responsive.dart';
// import 'package:carousel_pro/carousel_pro.dart';

// class Projects extends StatefulWidget {
//   const Projects({Key key}) : super(key: key);

//   @override
//   _ProjectsState createState() => _ProjectsState();
// }

// class _ProjectsState extends State<Projects> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
        
//         body: SafeArea(
//             child: Container(
//                 child: Responsive.isMobile(context)
//                     ? ListView(
//                       shrinkWrap: true,
//                       children: [
//                         Hero(
//                           tag: "dash",
//                           child: CircleAvatar(
//                             radius: 30,
//                             child: Image.asset(
//                               "assets/wesley2.png",
//                               height: 80,
//                               width: 80,
//                             ),
//                           ),
//                           transitionOnUserGestures: true,
//                           flightShuttleBuilder: (flightContext, animation,
//                               direction, fromContext, toContext) {
//                             return Hero(
//                               tag: "dash",
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(150.0),
//                                 child: Image.asset(
//                                   "assets/wesley2.png",
//                                   height: 100,
//                                   width: 100,
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                     slider()
//                       ],
//                     )
//                     : Responsive.isDesktop(context))));
//   }
// }

// // ignore: camel_case_types
// class slider extends StatelessWidget {
//   final List<Widget> image;
//   const slider({this.image});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       child: Carousel(
//         boxFit: BoxFit.fitWidth,
//         autoplay: false,
//         animationCurve: Curves.easeInOut,
//         // animationDuration: Duration(milliseconds: 1000),
//         dotSize: 6.0,
//         dotBgColor: Colors.transparent,
//         dotPosition: DotPosition.bottomCenter,
//         dotVerticalPadding: 10.0,
//         showIndicator: true,
//         indicatorBgPadding: 7.0,
//         images: [
//           Image.asset(
//             "assets/Screenshot_20210329-132223.jpg",
//             width: 100,
//             height: 300,
//           ),
//           Image.asset(
//             'assets/Screenshot_20210329-132223.jpg',
//             width: 100,
//             height: 300,
//           )
//         ],
//       ),
//     );
//   }
// }
