import 'dart:async';

import 'package:flutter/material.dart';
import 'package:web_pofolio/components/AnimatingRoute.dart';
import 'package:web_pofolio/components/bodySection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:web_pofolio/components/const.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_pofolio/views/DesktopView.dart';
import 'package:web_pofolio/views/ProjectsScreen.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key key}) : super(key: key);

  @override
  _MobileScreenState createState() => _MobileScreenState();
}

@override
class _MobileScreenState extends State<MobileScreen> {
  Color textColor = Colors.black;
  TextDecoration underlineText = TextDecoration.none;
  final _url = [
    "https://twitter.com/ezemikey12",
    "https://github.com/wesley-codes?tab=repositories",
    "https://touch.facebook.com/eze.nnaemeka.395",
    "https://drive.google.com/file/d/1g69iYkcK-jybkphvSCkKt5CYi5EuGsd9/view?usp=sharing",
    "https://drive.google.com/drive/folders/1uwqenn0lMDHMle5OctIfmXcdfOsJd_jW?usp=sharing"
  ];

  void _launchTwitter() async {
    await canLaunch(_url[0])
        ? await launch(_url[0])
        : throw Text("Could not launch");
  }

  void _launchGithub() async {
    await canLaunch(_url[1])
        ? await launch(_url[1])
        : throw Text("Could not launch");
  }

  void _launchFacebook() async {
    await canLaunch(_url[2])
        ? await launch(_url[2])
        : throw Text("Could not launch");
  }

  void _launchResume() async {
    await canLaunch(_url[3])
        ? await launch(_url[3])
        : throw Text("Could not launch");
  }

  void _launchProjects() async {
    await canLaunch(_url[4])
        ? await launch(_url[4])
        : throw Text("Could not launch");
  }

  void _launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'Ezemikey12@gmail.com',
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () {
                  _launchResume();
                },
                child: Text("RESUME", style: AppBarTextStyle)),
            InkWell(
              onTap: () {
                _launchProjects();
              },
              child: Text(
                "PROJECTS",
                style: AppBarTextStyle,
              ),
            ),
            Text("CONTACTME", style: AppBarTextStyle),
            // IconButtonLaunch(
            //   icon: FontAwesomeIcons.lightbulb,
            //   ontap: () {
            //     currentTheme.switchTheme();
            //   },
            // ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: "dash",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150.0),
                      child: Image.asset(
                        "assets/wesley.png",
                        width: 300,
                      ),
                    ),
                  ),
                  Words(
                    title: "Hi!, I'm, Nnaemeka",
                    size: 20,
                    weight: FontWeight.bold,
                  ),
                  Text(
                    "A Flutter Developer who is passionate about writing clean codes and makes magic with the keyboard.",
                    style: TextStyle(
                        fontSize: 14, height: 1.2, fontWeight: FontWeight.w300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 40,
                      child: MouseRegion(
                        onHover: (PointerDownEvent) {
                          setState(() {
                            textColor = Colors.white;
                          });
                        },
                        onExit: (PointerDownEvent) {
                          setState(() {
                            textColor = Colors.black;
                          });
                        },
                        child: FlatButton(
                          // onPressed: () => Navigator.push(
                          //     context, ScaleTransition5(Projects())),
                          onPressed: () {
                            _launchProjects();
                          },
                          child: Text(
                            'My Projects',
                            style: TextStyle(color: textColor),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0)),
                          color: Color(0xFF9774a8),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButtonLaunch(
                          icon: FontAwesomeIcons.github,
                          ontap: () {
                            _launchGithub();
                          },
                        ),
                        IconButtonLaunch(
                          icon: FontAwesomeIcons.twitter,
                          ontap: () {
                            _launchTwitter();
                          },
                        ),
                        IconButtonLaunch(
                          icon: FontAwesomeIcons.facebook,
                          ontap: () {
                            _launchFacebook();
                          },
                        ),
                        IconButtonLaunch(
                          icon: FontAwesomeIcons.envelope,
                          ontap: () {
                            _launchEmail();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.3,
              child: Text(
                'Meka.tech',
                style: TextStyle(
                  fontFamily: 'Fascinate',
                  fontSize: 35,
                ),
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
    );
  }
}
