import 'package:flutter/material.dart';

class Nation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.lightGreen,
        padding: EdgeInsets.only(left: 10.0, top: 40.0),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Our Nation",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w700,
                      color: Colors.indigo),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                //In order to make the contents fit within the available space in the main axi, we need to wrap them inside the Expanded widget.
                Expanded(
                  child: Text("Tiger",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                ),
                Expanded(
                  child: Text(
                    "The national animal",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontFamily: "Raleway",
                        fontStyle: FontStyle.italic),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                //In order to make the contents fit within the available space in the main axi, we need to wrap them inside the Expanded widget.
                Expanded(
                  child: Text("Peacock",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                ),
                Expanded(
                  child: Text(
                    "The national bird",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontFamily: "Raleway",
                        fontStyle: FontStyle.italic),
                  ),
                )
              ],
            ),
            MyImageAsset(),
            MyRaisedButton()
          ],
        ),
      ),
    );
  }
}

class MyImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(
        "images/up_arrow.png"); //Ref link: https://flutter.dev/docs/development/ui/assets-and-images
    Image image = Image(image: assetImage, height: 100.0, width: 100.0);
    return Container(child: image);
  }
}

class MyRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //The build context is being received in the StatelessWidget. It simply implies the context in which a particular widget is being built.
    return new Container(
        margin: EdgeInsets.only(top: 30.0),
        width: 250.0,
        height: 50.0,
        child: RaisedButton(
          //This is a button with an elevation
            color: Colors.amberAccent,
            child: Text("My Nation",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700)),
            elevation: 5.0,
            //If onPressed is null, the color of the button is not applied.
            onPressed: () => showDetail(context)));
  }

  void showDetail(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Info"),
      content: Text("This is your nation"),
    );
    showDialog(
        context: context,
        //Here the builder is function handler.  So we need a create a function that accepts build context and returns a widget.
        builder: (BuildContext context) => alertDialog);
  }
}