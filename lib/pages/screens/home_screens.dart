import "package:flutter/material.dart";

import 'package:flutter_web_responsive/components/header.dart';


class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: <Widget>[
          //////////////////////////////////
          // separate scrolling widget for grayline
          //////////////////////////////////
          Container(
            margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.9),
            child: SingleChildScrollView(
                controller: ScrollController(initialScrollOffset: 0.0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
//                    GrayLine(),
                  ],
                )),
          ),
          //////////////////////////////////
          // Container for our main view port
          //////////////////////////////////
          Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.15,
                      MediaQuery.of(context).size.height * 0.1,
                      MediaQuery.of(context).size.width * 0.15,
                      MediaQuery.of(context).size.height * 0.1,
                    ),
                    child: Column(
                      children: <Widget>[
                        LargeNavheader(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
//                        LargeHero(),
//                        SizedBox(
//                          height: MediaQuery.of(context).size.height * 0.05,
//                        ),
//                        DesktopScreenshot(),
//                        SizedBox(
//                          height: MediaQuery.of(context).size.height * 0.05,
//                        ),
//                        VisionProductLarge(),
                      ],
                    ),
                  ),
//                  Footer(color: colorFromHex("#6E67D0")),
//                  Terms(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MediumScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SmallScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}