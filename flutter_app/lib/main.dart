import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Exploring ListView",
//    home: new Nation(), //Commented this in order to learn list view.
      home: Scaffold(
          appBar: AppBar(title: Text("Long List")),
          body:
          getListView() // Directly calling getListView() will throw an error because we can use scrollable widgets only with in the Scaffold widget. Because the scrollble widgets might overflow beyond the screen. So, should not use the scrollable widget directly for the home property
      )));
}

List<String> getListElements() {
  var items = List<String>.generate(
      1000, (counter) => "Item $counter"); //To generate a list of 1000 items.
  return items; //items is the datasource for our listview.(This is the step 1)
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
    //itemBuilder plays a significant role in creating our list items
      itemBuilder: (context, index) {
        //A function - it will be called by the ListView.builder() only for the elements that are visible on the screen. Thus it is memory efficient. It will be called only once for an element.
        //Define what would be our list item
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          //For all the thousand elements, this statement will be executed
          onTap: () {
            debugPrint('${listItems[index]} was tapped');
          },
        );
      }); //builder is needed to create a long list.
  return listView;
}
