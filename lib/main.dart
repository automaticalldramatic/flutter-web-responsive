import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        fontFamily: 'Nunito',
        primaryColorDark: Colors.black,
      ),
//      home: HomePage(),
      routes: {
//        '/#': (context) => HomePage(),
//        '/terms': (context) => TermsPage(),
//        '/privacy': (context) => PrivacyPage(),
      },
    );
  }
}
