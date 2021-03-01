import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          headline1: TextStyle(
            fontSize: 30.0,
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomeView(title: 'Fungal Doc'),
    );
  }
}

class HomeView extends StatefulWidget {

  final String title;
  HomeView({this.title});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Fungal Doc"),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/desktop_robo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue)),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    minWidth: 200,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.of(context)
                          .push(
                        MaterialPageRoute(
                            builder: (context) => MenuPage()
                        )
                      );
                    },
                    child: Text("Start")
                ),
                SizedBox(height: 60.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Fungal Doc"),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue)),
                color: Colors.blueAccent,
                textColor: Colors.white,
                minWidth: 200,
                height: 50,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.of(context)
                      .push(
                      MaterialPageRoute(
                          builder: (context) => Detector()
                      )
                  );
                },
                child: Text("Detector")
            ),
            SizedBox(height: 20.0),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue)),
                color: Colors.blueAccent,
                textColor: Colors.white,
                minWidth: 200,
                height: 50,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.of(context)
                      .push(
                      MaterialPageRoute(
                          builder: (context) => DoctorDetails()
                      )
                  );
                },
                child: Text("Doctor Details")
            ),
            SizedBox(height: 20.0),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue)),
                color: Colors.blueAccent,
                textColor: Colors.white,
                minWidth: 200,
                height: 50,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.of(context)
                      .push(
                      MaterialPageRoute(
                          builder: (context) => Facts()
                      )
                  );
                },
                child: Text("Facts")
            ),
          ],
        ),
      ),
    );
  }
}

class Detector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detector"),),
      body: Center(),
    );
  }
}

class DoctorDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Doctor Details"),),
      body: Center(),
    );
  }
}

class Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Facts"),),
      body: Center(),
    );
  }
}
