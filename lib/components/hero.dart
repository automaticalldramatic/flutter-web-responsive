import "package:flutter/material.dart";

class LargeHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 3,
          child: HeroMessage(
            heading: new Text(
              "The product goal that changes your life",
              style: TextStyle(
                fontFamily: "Raleway",
                fontWeight: FontWeight.w800,
                fontSize: 36.0,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            subText: new Text(
              "some bull about selling stuff",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Spacer(flex: 1),
        Flexible(fit: FlexFit.tight, flex: 3, child: HeroImg()),
      ],
    );
  }
}

class SmallHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
            child: HeroMessage(
              heading: new Text(
                "The product goal that changes your life",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w800,
                  fontSize: 27.0,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              subText: new Text(
                "some bull about selling stuff",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 21.0,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            )),
      ],
    );
  }
}

class HeroMessage extends StatelessWidget {
  final Text heading;
  final Text subText;

  const HeroMessage({
    Key key,
    @required this.heading,
    @required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        this.heading,
        SizedBox(
          height: 24,
        ),
        this.subText,
      ],
    );
  }
}

class HeroImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          // todo: add shadow to image
          children: <Widget>[
//                Container(
//                  decoration: BoxDecoration(
//                  color: Colors.transparent,
//                  color: Colors.blue,
//                    boxShadow: [
//                      BoxShadow(
//                        color: Colors.black12,
//                        offset: const Offset(
//                         20.0,
//                         570.0,
//                        ),
//                        spreadRadius: 10.0,
//                        blurRadius: 30.0,
//                      ),
//                    ],
//                    shape: BoxShape.circle,
//                    image: DecorationImage(
//                     image: AssetImage('assets/hero.png')
//                    ),
//                  ),
//                ),
            Image(
              image: AssetImage('assets/hero.png'),
            ),
          ],
        ),
      ),
    );
  }
}
