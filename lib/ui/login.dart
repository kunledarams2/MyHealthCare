import 'package:evendlaundary/utili/io.dart';
import 'package:evendlaundary/utili/stringCall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Sign_Up/sign_up_step_one.dart';

main() {}

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginForm();
  }
}

class _LoginForm extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final call = new StringCall();
  var io = new IO();
  var _editDataController = new TextEditingController();
  String _saveData = "";

  @override
  void initState() {
    super.initState();
//   io.getData(key)
    _getData();

  }

  _getData()  async {
    _saveData =  await io.getData(IO.userName);
    setState(()  {
//      if(io.getData(IO.userName) != null){
//
//      } else {
//        _saveData="isEmpty";
//      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return Container(
//      height: MediaQuery.of(context).size.height,
//      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Expanded(
              child: SingleChildScrollView(
                child: Form(
                    child: Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 20.0, top: 100),
                              child: Image.asset(
                                'assets/siginlogo.png',
                                width: 30,
                                height: 30,
                              ),
                            ),
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 30, left: 20),
                                child: Text(
                                  "Welcome back,",
                                  style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontFamily: "AveriaSerifLibre"),
                                )),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                "Sign in to continue",
                                style: TextStyle(
                            fontSize: 13.0, fontFamily: "AveriaSerifLibre"),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 20, left: 20, right: 20),
                              child: TextFormField(
                                controller: _editDataController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Email",
                                    labelStyle:
                                    TextStyle(fontFamily: "AveriaSerifLibre")),
                              ),
                            ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Password",
                                  labelStyle:
                                      TextStyle(fontFamily: "AveriaSerifLibre")
      //                          icon: Icon(Icons.remove_red_eye),
                                  ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 20, top: 10),
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(fontFamily: "AveriaSerifLibre"),
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
                                io.setData(IO.userName, _editDataController.text);
                              },
                              child: Text(
                                "Login",
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
                                Text(
                                  "You don’t have an account?",
                                  style: TextStyle(fontFamily: "AveriaSerifLibre"),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    io.setData(IO.userName, _editDataController.text);
//                                      Scaffold.of(context).showSnackBar(
//                                          SnackBar(
//                                              content: Text('All is good')));

                                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpStepOne()));
                                    },
                                  child: Text(
                                    "Sign Up $_saveData",
                                    style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: "AveriaSerifLibre"),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
          ))
        ],
      ),
    );

  }
}
