import 'package:evendlaundary/ui/book_appointment/consulation_type.dart';
import 'package:evendlaundary/utili/stringCall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "AveriaSerifLibre"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: CustomizeBody(),
      ),
    );
  }
}

class CustomizeBody extends StatelessWidget {


var string = new StringCall();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30),
              child: Text(
                "What are you looking for?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                      ),
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.only(left: 20, top: 15),
                      child: Image.asset(
                        "assets/icon_consult.png",scale: 1.5,
                        alignment: Alignment.center,
                      )
//                    Icon(
//                      Icons.phone_iphone,
//                      size: 40,
//                      color: Colors.white,
//                    ),
                      ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Doctors",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Talk with a doctor now",
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          "57 Doctors are available",
                          style: TextStyle(color: Colors.grey, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 28, left: 10, right: 20),
                    height: 45,
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("Consult"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepOrange,
                    ),
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Icon(
                      Icons.phone_iphone,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Doctors, Therapists",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Book an appointment",
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          "Consult with top specalist",
                          style: TextStyle(color: Colors.grey, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 22, left: 15, right: 20),
                    height: 45,
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("Book"),
                      onPressed: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConsultationType()));
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
