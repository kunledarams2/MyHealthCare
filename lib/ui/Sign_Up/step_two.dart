import 'package:evendlaundary/ui/Sign_Up/step_three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpStepTwo extends StatefulWidget {
  @override
  _SignUpStepTwoState createState() => _SignUpStepTwoState();
}

class _SignUpStepTwoState extends State<SignUpStepTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "AveriaSerifLibre"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: customBodySteptwo(),
      ),
    );
  }
}

class customBodySteptwo extends StatefulWidget {
  @override
  _customBodySteptwoState createState() => _customBodySteptwoState();
}

class _customBodySteptwoState extends State<customBodySteptwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 20, top: 40),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "About you",
                        style: TextStyle(fontSize: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "To give you the best experience possible, we'd like\nto know a little bit about you.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              wordSpacing: 2,
                              height: 1.5,
                              fontSize: 15),
                        ),
                      )
                    ],
                  )),
              Container(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Date of Birth",
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              Container(
                child: Text("Gender"),
                margin: EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.topLeft,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Image.asset("assets/icon_female.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:100.0,right: 100),
                          child: Text(
                            "Female",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Image.asset("assets/icon_mark.png",height: 20,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Image.asset("assets/icon_male.png", height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:120.0,right: 100),
                          child: Text(
                            "Male",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:0.0),
                          child: Image.asset("assets/icon_mark.png",height: 20,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 80),
                width: 350,
                height: 50,
                child: RaisedButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StepThree()));
                  },
                  child: Text(
                    "Create Account",
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, right: 40, left: 40),
                child: Text(
                  "By signing up, you agree with the Terms of Service and Privacy Policy",
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
