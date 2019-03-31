import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //This method is called by the framework when MyApp() is called
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //To remove debug mode banner while running the app
        title: "My Flutter App",
        home: Scaffold(
            appBar: AppBar(title: Text("First Screen")), body: FirstScreen()));
  }
}
