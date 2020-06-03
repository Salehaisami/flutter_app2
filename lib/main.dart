import 'package:flutter/material.dart';
import 'user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('UMUT IS '),
        ),
        body: Center(
          child: UserWidget(),
        ),
      ),
    );
  }
}
class UserWidget extends StatefulWidget {
  UserWidgetState createState() => UserWidgetState();
}

class UserWidgetState extends State<UserWidget> {
  var res = "nothing yet";

  UserWidgetState() {
    User user = new User('Saleh', 'SS@bl.com', 'dart');
    user.getUser().then((val) =>
        setState(() {
          res = val;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Stateful Demo'),
//      ),
      body: new SingleChildScrollView(
        padding: new EdgeInsets.all(8.0),
        child: new Text(
          res,
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19.0,
          ),
        ),
      ),
    );
  }
}
