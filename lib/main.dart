import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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

// ignore: must_be_immutable
class Detector extends StatelessWidget {
  PickedFile _imageFile;
  final ImagePicker imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detector"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50,),
            imagePreview(),
            SizedBox(height: 40),
            addImage(),
            SizedBox(height: 20,),
            proceedButton(),
            SizedBox(height: 50,),
          ],
        ),
      )
    );
  }
  Widget imagePreview() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 150,
          backgroundImage: _imageFile==null? AssetImage("assets/insert-image-here.png"):
              FileImage(File(_imageFile.path)),
        ),
      ],
      ),
    );
  }

  Widget addImage(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 0),
      child: Column(
        children: <Widget>[
          Text(
            "Choose an image",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton.icon(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blue)),
            color: Colors.white,
            textColor: Colors.blue,
            minWidth: 180,
            height: 40,
            padding: EdgeInsets.all(5.0),
            onPressed: () {
              takePhoto(ImageSource.camera);
              setState(() {

              });
            },
            icon: Icon(Icons.camera),
            label: Text("Camera"),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton.icon(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.blue)),
            color: Colors.white,
            textColor: Colors.blue,
            minWidth: 180,
            height: 40,
            padding: EdgeInsets.all(5.0),
            onPressed: () {
              takePhoto(ImageSource.gallery);
            },
            icon: Icon(Icons.image),
            label: Text("Gallery"),
          ),
        ],
      ),
    );
  }
  
  void takePhoto(ImageSource source) async{
    final imageFile = await imagePicker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = imageFile;
    });
  }

  Widget proceedButton(){
    return Center(
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.blue)),
        color: Colors.blueAccent,
        textColor: Colors.white,
        minWidth: 180,
        height: 40,
        padding: EdgeInsets.all(5.0),
        onPressed: () {
        },
        child: Text("Proceed"),
      ),
    );
  }

  void setState(Null Function() param0) {}
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
