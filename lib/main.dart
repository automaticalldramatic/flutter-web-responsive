import 'package:flutter/material.dart';
import 'package:flutter_web_responsive/theme/primary.dart';
import 'package:flutter_web_responsive/pages/home_page.dart';

main() {
  runApp(ResponsiveWeb());
}

class ResponsiveWeb extends StatelessWidget {
  const ResponsiveWeb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: primaryTheme(),
      home: HomePage(),
      routes: {
        '/#': (context) => HomePage(),
//        '/terms': (context) => TermsPage(),
//        '/privacy': (context) => PrivacyPage(),
      },
    );
  }
}
