import 'package:flutter/material.dart';
import 'package:weather/screens/loading_screen.dart';

class EmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please turn on your location',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoadingScreen()));
                },
              color: Colors.white,
                elevation: 5.0,
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                shape: Border.all(color: Colors.black, width: 2.0),
              )
            ],
          ),
        ),
      )
    );
  }
}
