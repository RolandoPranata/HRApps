import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hr_project/Page/absensi_page.dart';
import 'package:hr_project/Page/cuti_page.dart';
import 'package:hr_project/Page/izin_page.dart';
import 'package:hr_project/Page/remote_page.dart';
import 'package:hr_project/Page/sakit_page.dart';
import 'package:hr_project/bottom_bar.dart';
import 'package:hr_project/histori_page.dart';
import 'package:hr_project/home_page.dart';
import 'package:hr_project/login_page.dart';
import 'package:hr_project/profile_page.dart';

final route = <String, WidgetBuilder>{
  HomePage.tag: (context) => HomePage(),
  LoginPage.tag: (context) => LoginPage(),
  HistoriPage.tag: (context) => HistoriPage(),
  ProfilePage.tag: (context) => ProfilePage(),
  BottomBar.tag: (context) => BottomBar(),
  AbsensiPage.tag: (context) => AbsensiPage(),
  CutiPage.tag: (context) =>CutiPage(),
  IzinPage.tag: (context) => IzinPage(),
  RemotePage.tag: (context) => RemotePage(),
  SakitPage.tag: (context) => SakitPage(),
};

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //   .then((_) {
  //   });
  runApp(new MaterialApp(
    theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: route,
  ));
}

class SplashScreen extends StatefulWidget {
  static var tag;

  SplashScreen({Key key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(LoginPage.tag);
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setPreferredOrientations([
    //     DeviceOrientation.portraitUp,
    //   ]);
    return new MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
      home: Scaffold(
        body: new Center(
          child: new Image.asset('images/logo.png'),
          heightFactor: 50,
          widthFactor: 50,
        ),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
    );
  }
}
