import 'package:authentication6_flutter_app/sign_in.dart';
import 'package:authentication6_flutter_app/sign_up.dart';
import 'package:authentication6_flutter_app/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: Welcome(),
    );
  }
}
