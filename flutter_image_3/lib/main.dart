import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('Flutter FadeInImage Demo'),  
        ),  
        body: Center(  
          child: Column(  
            children: <Widget>[  
              FadeInImage.assetNetwork(  
                placeholder: 'assets/tablet.png',  
                image: 'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png',  
                  height: 400,  
                  width: 250  
              ),  
              Text(  
                'It is an image displays from the given url.',  
                style: TextStyle(fontSize: 20.0),  
              )  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  