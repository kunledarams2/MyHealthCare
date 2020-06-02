import 'package:evendlaundary/ui/Sign_Up/step_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class SignUpStepOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "AveriaSerifLibre"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: customBodyStepOne(),
      ),
    );
  }
}

class customBodyStepOne extends StatefulWidget {
  @override
  _customBodyStepOne createState() => _customBodyStepOne();
}

class _customBodyStepOne extends State<customBodyStepOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Form(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                "assets/siginlogo.png",
                width: 20,
                height: 20,
              ),
            ),
                Container(
                  child: Text(
                "Create your account",
                style: TextStyle(fontSize: 25),
              ),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20, top: 20),
            ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(children: <Widget>[
                            Container(
                              width: 200,
                              height: 70,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                top: 20, left: 20, right: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                  labelText: "First Name",
                                  border: OutlineInputBorder(),),
                            ),
                          ),
                        ),
                            Container(
                              width: 200,
                              height: 60,
                              child: Padding(
                               padding: const EdgeInsets.only(
                                top: 10, left: 20, right: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                  labelText: "Email Address",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Expanded(
//
//                    child: Form(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 70,
                          margin: EdgeInsets.only(top: 0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 5, right: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Last Name",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Phone Number",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                      ],
                    ),
//                    ),
                  ),
                ],
              ),
            ),
                Container(
                 height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                      labelText: "Username", border: OutlineInputBorder()),
                ),
              ),
            ),
                Container(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                      labelText: "Password", border: OutlineInputBorder()),
                ),
              ),
            ),
                Container(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder()),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                  width: 350,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpStepTwo()));
                    },
                    child: Text(
                  "Continue",
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account"),
                      GestureDetector(
                        onTap: () {
//                                      Scaffold.of(context).showSnackBar(
//                                          SnackBar(
//                                              content: Text('All is good')));
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TremApp()));
                        },
                        child: Text(
                      "  Log in",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),

    );
  }
}
