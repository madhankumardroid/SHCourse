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
            MyImageAsset()
          ],
        ),
      ),
    );
  }
}

class MyImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/up_arrow.png");
    Image image = Image(image: assetImage, height: 100.0, width: 100.0);
    return Container(child: image);
  }
}
