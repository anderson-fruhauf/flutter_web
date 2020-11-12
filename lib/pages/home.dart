import 'package:flutter/material.dart';
import 'package:flutterWeb/pages/initial.dart';
import 'package:flutterWeb/widgets/navbar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scafoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFF8FBFF),
            Color(0xFFFFCFDFD),
          ],
        ),
      ),
      child: Scaffold(
        key: _scafoldKey,
        drawer: NavBar.GetInstance().buildDrawer(),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            NavBar.GetInstance(),
            Expanded(
              child: ListView(
                children: [InitialScren()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
