import "package:flutter/material.dart";

class Footer extends StatelessWidget {
  final Color color;

  const Footer({Key key, @required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.15,
        top: MediaQuery.of(context).size.height * 0.05,
        right: MediaQuery.of(context).size.width * 0.15,
        bottom: MediaQuery.of(context).size.height * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                child: Text(
                  "Change the world. Buy this product.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 21.0,
                    color: Colors.white,
                  ),
                ),
              )),
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Image(
                image: AssetImage('assets/SignUpBtn.png'),
                width: 175,
                height: 40,
              )
          ),
        ],
      ),
    );
  }
}

class SmallFooter extends StatelessWidget {
  final Color color;

  const SmallFooter({Key key, @required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.15,
        top: MediaQuery.of(context).size.height * 0.05,
        right: MediaQuery.of(context).size.width * 0.15,
        bottom: MediaQuery.of(context).size.height * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "Save your time.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 19.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    " Use one workflow.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 19.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Image(
                  image: AssetImage('assets/SignUpBtn.png'),
                  width: 175,
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.15,
        top: MediaQuery.of(context).size.height * 0.05,
        right: MediaQuery.of(context).size.width * 0.15,
        bottom: MediaQuery.of(context).size.height * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: OutlineButton(
                  textColor: Colors.black54,
                  onPressed: () {
                    Navigator.pushNamed(context, '/terms');
                  },
                  child: new Text('Terms & Conditions'))),
          Spacer(),
          Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: OutlineButton(
                  textColor: Colors.black54,
                  onPressed: () {
                    Navigator.pushNamed(context, '/privacy');
                  },
                  child: new Text('Privacy Policy'))),
          Spacer(flex: 2),
          Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: Container(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "© Rizwan Iqbal 2019 all rights reserved",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
//								 fontSize: 21.0,
                      color: Colors.black54,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class SmallTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.05,
        top: MediaQuery.of(context).size.height * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.height * 0.05,
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "© Rizwan Iqbal 2019 all rights reserved",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
//								 fontSize: 21.0,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: OutlineButton(
                      textColor: Colors.black54,
                      onPressed: () {
                        Navigator.pushNamed(context, '/terms');
                      },
                      child: new Text('Terms & Conditions'))),
              Spacer(),
              Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: OutlineButton(
                      textColor: Colors.black54,
                      onPressed: () {
                        Navigator.pushNamed(context, '/privacy');
                      },
                      child: new Text('Privacy Policy'))),
            ],
          ),
        ],
      ),
    );
  }
}
