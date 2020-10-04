import 'dart:async';

import 'package:flutter/material.dart';

import 'package:students_catlog/screens/dashboard.dart';
import 'package:students_catlog/screens/login.dart';


import 'package:students_catlog/utils/shared_pref.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/dashboard": (ctx) => DashboardScreen(),
        "/login": (ctx) => LoginScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

class SplashScreen extends StatefulWidget {

  SplashScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool isLoggedIn = false;
  var _visible = true;

  // var isLogin;
  AnimationController animationController;
  Animation<double> animation;

  _SplashScreenState() {
    MySharedPreferences.instance
        .getBooleanValue("loggedin")
        .then((value) =>
        setState(() {
          isLoggedIn = value;
        }));
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    if (isLoggedIn) {
      Navigator.of(context).pushReplacementNamed('/dashboard');
    }
    else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  void initState() {
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 4));
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Image.asset(
                'assets/images/test_edge.png',
                width: animation.value * 500,
                height: animation.value * 500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
