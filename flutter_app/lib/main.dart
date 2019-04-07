import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Exploring ListView",
//    home: new Nation(), //Commented this in order to learn list view.
      home: Scaffold(
          appBar: AppBar(title: Text("Long List")),
          body: getListView(),
          // Directly calling getListView() will throw an error because we can use scrollable widgets only with in the Scaffold widget. Because the scrollble widgets might overflow beyond the screen. So, should not use the scrollable widget directly for the home property
          //The scaffold widget has a special provision for FAB button
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint("FAB Clicked");
              },
              child: Icon(Icons.add),
              //tooltip is a kind of accessibility feature for some special users
              tooltip: "Add One more item"))));
}

void showSnackBar(BuildContext context, String listItem) {
  var snackBar = SnackBar(
      content: Text("You just tapped $listItem"),
      action: SnackBarAction(
          label: "UNDO",
          onPressed: () {
            debugPrint("Performing dummy Undo operation");
          }));
  Scaffold.of(context /* requires the build context of Scaffold*/).showSnackBar(
      snackBar); //Ultimately the of() method gets the build context of Scaffold in the tree hierarchy.
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
            showSnackBar(
                context,
                listItems[
                index]); //This context refers to the itemBuilder context. We are ultimately getting the context of Scaffold widget because the getListView() method is called with in the Scaffold widget.
          },
        );
      }); //builder is needed to create a long list.
  return listView;
}
