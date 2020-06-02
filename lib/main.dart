import 'package:evendlaundary/ui/login.dart';
import 'package:evendlaundary/ui/scaffold_tutotial.dart';
import 'package:flutter/material.dart';

void main() => runApp(TremApp());

class TremApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: LoginForm(),
      ),
    );
  }

}



