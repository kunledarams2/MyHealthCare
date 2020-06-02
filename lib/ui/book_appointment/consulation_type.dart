import 'package:flutter/material.dart';

class ConsultationType extends StatefulWidget {
  @override
  _ConsultationTypeState createState() => _ConsultationTypeState();
}

class _ConsultationTypeState extends State<ConsultationType> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,

          theme: ThemeData(fontFamily: "AveriaSerifLibre"),
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                "Book Appointment",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            body: Container(
              child: Column(
                children: <Widget>[
                  _headerTitle(),
                  _chatOption(),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 20, top :10),
                    child: Divider(color: Colors.grey,thickness: 1,),
                  ),
                  _voiceCallOption(),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 20, top :10),
                    child: Divider(color: Colors.grey,thickness: 1,),
                  ),
                  _videoCallOption(),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 20, top :10),
                    child: Divider(color: Colors.grey,thickness: 1,),
                  ),
                  _continueBtn()
                ],
              ),
            ),
          ),
        ));
  }

  Widget _headerTitle() {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20),
        child: Text("Select appointment type"),
      ),
      alignment: Alignment.topLeft,
    );
  }

  Widget _chatOption() {
    return Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(left: 20, top: 20),
            decoration: BoxDecoration(
                color: Color(0xf5faf54),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)
                ),
            child: Image.asset(
              "assets/icon_chat.png",
              scale: 1.5,
              width: 10,
              height: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Chat",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Text(
                    "when you are just busy\n to talk",
                    style:
                        TextStyle(height: 1.0, fontSize: 14, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _voiceCallOption(){
    return Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(left: 20, top: 20),
            decoration: BoxDecoration(
                color: Color(0xFFF4F6d),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: Image.asset(
              "assets/icon_video.png",
              width: 100,
              height: 100,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Audio Call",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Text(
                    "Same as phone but you\n using the internet",
                    style:
                    TextStyle(height: 1.0, fontSize: 14, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _videoCallOption(){
    return Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(left: 20, top: 20),
            decoration: BoxDecoration(
                color: Color(0xF5FAF5d),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: Image.asset(
              "assets/icon_video.png",
              width: 100,
              height: 100,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Video Call",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Text(
                    "You and doctor\n can see each other",
                    style:
                    TextStyle(height: 1.0, fontSize: 14, color: Colors.grey),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _continueBtn(){
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 1,
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 80),
        width: 350,
        height: 50,
        child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        onPressed: () {
//          Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) => StepThree()));
        },
        child: Text(
          "Continue",
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
      ),
    ),);
  }
}

class CustomizeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
