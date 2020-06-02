import 'package:flutter/material.dart';

import '../homePage.dart';

class StepThree extends StatefulWidget {
  @override
  _StepThreeState createState() => _StepThreeState();
}

class _StepThreeState extends State<StepThree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "AveriaSerifLibre"),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: CustomizeBody(),
      ),
    );
  }
}

class CustomizeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20, top: 50),
                child: Icon(
                  Icons.close,
                  color: Colors.blueAccent,
                )),
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              child: Text(
                "Thank you for registering!\nSubscribe to a plan",
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 40),
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.asset(
                      "assets/icon_mark.png",
                      height: 20,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Text(
                            "Unlimited Session",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "High-Definition Video, Audio Or Text, \n24/7 Guaranteed Access.",
                            style: TextStyle(color: Colors.white, height: 1.5),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 40),
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.asset(
                      "assets/icon_mark.png",
                      height: 20,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Text(
                            "Unlimited Access",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Diet Plan, frequent health tips, \nschedule medical appointment, \ndrug prescriptions.",
                            style: TextStyle(color: Colors.white, height: 1.5),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 40),
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.asset(
                      "assets/icon_mark.png",
                      height: 20,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Text(
                            "Can Cancel",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Cancel anytime",
                            style: TextStyle(color: Colors.white, height: 1.5),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                "N1,000 per month",
                style: TextStyle(color: Colors.grey, height: 4, fontSize: 15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              width: 350,
              height: 50,
              child: RaisedButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StepThree()));
                },
                child: Text(
                  "Add Card & Subscribe",
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              width: 350,
              height: 50,
              child: RaisedButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StepThree()));
                },
                child: Text(
                  "I have Token",
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.white, height: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
