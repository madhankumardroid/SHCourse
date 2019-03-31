import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepOrange,
//The width and height are completely ignored.
            //Each widget in Flutter has some dimension. We can call a widget as a box. So, this container is a box.
            //Each box in widget follows some guidelines to attain some width and height depending on the child and parent's width and height.
            //Such guidelines are called Box Constraints.
            //Here the Container widget is the child of the MaterialApp widget. The width and height of the MaterialApp is being passed to the Container widget.
            //The container widget instead of using its own width and height, acquiring the height and width of its parent widget(MaterialApp).
            //To make the container use its own width and height instead of its parent, we need to use center widget. The center widget gives priority to the width and height of its child widget.
//        width: 200.0,
//        height: 200.0,
            //Commenting for apply margin
//            width: 200.0,
//            height: 100.0,
            margin: EdgeInsets.all(20.0),
            child: Text("Success",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    decoration: TextDecoration
                        .none /*By default, it is TextDecoration.underline*/,
                    fontSize: 75.0,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ))));
  }
}
