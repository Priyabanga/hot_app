import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myApp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.black54);
  var myIcon = Icon(Icons.apps);

  myPress() {
    Fluttertoast.showToast(
        msg: "Profile Link: www.linkedin.com/in/priya-b-0b4274171",
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.blueGrey.shade200,
        textColor: Colors.red.shade700,
        fontSize: 16.0);
  }

  var myAcessIcon = Icon(Icons.notification_important);
  var myBellButton = IconButton(icon: myAcessIcon, onPressed: myPress);

  var src =
      "https://raw.githubusercontent.com/Priyabanga/hot_app/master/linkedIn.png";

  var myAppBar = AppBar(
    title: Text("LinkedIn"),
    leading: myIcon,
    actions: <Widget>[myBellButton],
    backgroundColor: Colors.blueAccent.shade200,
  );

  var myBody = Container(
    width: 300,
    height: 340,
    color: Colors.black12,
    child: Column(
      children: <Widget>[
        Image.network(src),
        Text(
          "Tap on bell icon",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontStyle: FontStyle.italic),
        )
      ],
    ),
  );

  var myHome = Scaffold(
    appBar: myAppBar,
    body: Center(child: myBody),
    backgroundColor: Colors.blueGrey.shade100,
  );

  return MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
  );
}
