import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detector_screen.dart';
import 'fungal_fact_screen.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                          builder: (context) => DetectorScreen()
                      )
                  );
                },
                child: Text("Detector")
            ),
            SizedBox(height: 20.0),
            // FlatButton(
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(18.0),
            //         side: BorderSide(color: Colors.blue)),
            //     color: Colors.blueAccent,
            //     textColor: Colors.white,
            //     minWidth: 200,
            //     height: 50,
            //     padding: EdgeInsets.all(8.0),
            //      onPressed: () {
            //     //   Navigator.of(context)
            //     //       .push(
            //     //       MaterialPageRoute(
            //     //           builder: (context) => DoctorDetails()
            //     //       )
            //     //   );
            //     },
            //     child: Text("Doctor Details")
            // ),
            // SizedBox(height: 20.0),
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
                          builder: (context) => FungalFactScreen()
                      )
                  );
                },
                child: Text("Facts")
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}

