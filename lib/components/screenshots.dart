import "package:flutter/material.dart";


class DesktopScreenshot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        DesktopScreenshotImg(),
      ],
    );
  }
}

class MobileScreenshot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        MobileScreenshotImg(),
      ],
    );
  }
}


class DesktopScreenshotImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        fit: FlexFit.tight,
        flex: 4,
        child: Container(
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/DesktopScrnsht.png'),
                ),
              ],
            ),
        )
    );
  }
}

class MobileScreenshotImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        fit: FlexFit.tight,
        flex: 4,
        child: Container(
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/MobileScrnsht.png'),
                ),
              ],
            ),
        )
    );
  }
}