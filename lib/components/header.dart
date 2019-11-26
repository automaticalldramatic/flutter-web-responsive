import "package:flutter/material.dart";


class LargeNavheader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Logo(),
        Spacer(flex: 6),
        GLogin(),
      ],
    );
  }
}

class MediumNavHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Logo(),
        Spacer(flex: 4),
        GLogin(),
      ],
    );
  }
}

class SmallNavHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Spacer(flex: 1),
        SmallLogo(),
        Spacer(flex: 1),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
      child: LogoImg(),
    );
  }
}

class SmallLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SmallLogoImg(),
    );
  }
}

class GLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GloginImg()
      ],
    );
  }
}

class LogoImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/');
      },
      child: Text("Logo")
//      child: Image(
//        image: AssetImage('assets/2.0x/Logo.png'),
//        // we don't want the logo image resizing and jumping around
//        width: 100,
//      ),
    );
  }
}

class SmallLogoImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/');
      },
      child: Text("Logo"),
//      child: Image(
//        image: AssetImage('assets/Logo.png'),
        // we don't want the logo image resizing and jumping around
//        width: 200,
//      ),
    );
  }
}

class GloginImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Signup Btn");
//    return Image(
//      // we don't want the login button resizing and jumping around
//      image: AssetImage('assets/SignUpBtn.png'),
//      width: 175,
//      height: 40,
//    );
  }
}