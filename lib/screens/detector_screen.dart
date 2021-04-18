import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DetectorScreen extends StatefulWidget {
  @override
  _DetectorScreenState createState() => _DetectorScreenState();
  }

class _DetectorScreenState extends State<DetectorScreen>{
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
              SizedBox(height: 40,),
              addImage(),
              SizedBox(height: 20,),
              proceedButton(),
              SizedBox(height: 50,),
            ],
          ),
        )
    );
    throw UnimplementedError();
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose an Image",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.camera_alt),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                label: Text("Camera"),
              ),
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                label: Text("Gallery"),
              )
            ],
          )
        ],
      ),
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
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet())
              );
            },
            icon: Icon(Icons.add),
            label: Text("Add"),
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
}
  