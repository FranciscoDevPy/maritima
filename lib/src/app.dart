
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.purple
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0
      ),// AppBar
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Pawan Kumar"), 
              accountEmail: Row(
                children: <Widget>[
                  Text("265 Followers "),
                  Icon(Icons.supervisor_account, color: Colors.white)
                ],
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("XVR")
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/fondo.png')
                  /* image: NetworkImage("https://image.freepik.com/vector-gratis/diseno-fondo-moderno-3d-purpura_53876-87399.jpg") */
                )
              ),
            ),
            new ListTile(
              title: new Text("Profile"),
              leading: new Icon(Icons.account_circle),
            ),
            new ListTile(
              title: new Text("Messages"),
              leading: new Icon(Icons.message),
            ),
            new ListTile(
              title: new Text("Activity"),
              leading: new Icon(Icons.timeline),
            ),
            new ListTile(
              title: new Text("Lists"),
              leading: new Icon(Icons.list),
            ),
            new ListTile(
              title: new Text("Reports"),
              leading: new Icon(Icons.picture_as_pdf),
            ),
            new ListTile(
              title: new Text("Statistic"),
              leading: new Icon(Icons.timeline),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.close),
              title: new Text("Close"),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}