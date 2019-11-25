import "package:flutter/material.dart";

import 'package:flutter_web_responsive/utils/responsive_widget.dart';
import 'package:flutter_web_responsive/pages/screens/home_screens.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: LargeScreen(),
      smallScreen: SmallScreen(),
    );
  }
}


