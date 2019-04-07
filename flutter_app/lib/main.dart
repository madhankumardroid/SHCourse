import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Exploring ListView",
//    home: new Nation(), //Commented this in order to learn list view.
      home: Scaffold(
          appBar: AppBar(title: Text("Basic list view")),
          body:
          getListView() // Directly calling getListView() will throw an error because we can use scrollable widgets only with in the Scaffold widget. Because the scrollble widgets might overflow beyond the screen. So, should not use the scrollable widget directly for the home property
      )));
}

Widget getListView() {
  var listView = ListView(
    //The basic listview is meant for few list items. It is not suitable for handling large number of list items.
    //It loads all item in memory when attached to screen. Since it is not memory efficient for large lists.
    children: <Widget>[
      //The most commonly used widget in the list view is the ListTile
      ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful view"),
          trailing: Icon(Icons.wb_sunny),
          //The leading and trailing properties expects a widget basically the Icon widget, but we can use any widget we wish.
          onTap: () {
            //To handle the click event of the list item
            debugPrint("Landscape tapped");
          }),
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("Alarm"),
        subtitle: Text("Beautiful view"),
        onTap: () {
          debugPrint("Alarm tapped");
        },
        //The properties are optional
      ),
      ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),
          subtitle: Text("Beautiful view"),
          trailing: Icon(Icons.wb_sunny)
        //The leading and trailing properties expects a widget basically the Icon widget, but we can use any widget we wish.
      ),
      //It is not mandatory to use ListTile as the children of list view. We can use any widget of our choice.
      Text("I'm an element")
    ],
  );
  return listView;
}
