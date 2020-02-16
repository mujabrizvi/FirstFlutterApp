//import flutter helper library

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'ModelClasses/ImageData.dart';

//this is the widget
class App extends StatefulWidget{
  @override
  //here it is returning the instance of AppState
  State<StatefulWidget> createState() => AppState();
}


//this is widget state
class AppState extends State<App>{
  int counter= 0;
//this class must extend the stateless "StatelessWidget" base class
//must define a build method that returns
//the widgets that *this custom widget* will show


  //function to fetch the images
  void fetchImage() async
  {
    counter++;
    String url='https://jsonplaceholder.typicode.com/photos/$counter';
    //here i am initiating a request and waiting for the response
    var response = await get(url);
//here i am parsing the JSON response
    var parsedData=json.decode(response.body);

    ImageData.fromJson(parsedData);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //named parameter which is used as default route
      //or widget to show on our screen when the application first starts up
      //to this we assigned a scaffold
      home:Scaffold(


        body: Text('$counter'),

        appBar: AppBar(
          title: Text("1st Flutter App Test"
          ),
        ),

        floatingActionButton: FloatingActionButton(
          //child: Text("+"),

          //to place anything inside this button i used the child parameter
          child: Icon(Icons.add),
          ///////////////////////////////////////////////////////////////////////////////////////////////backgroundColor: Colors.lightGreenAccent,
          //this function is called when the button is pressed
          onPressed: (){
            fetchImage();
            //this is used to update the widget value whenever it is changed
//            setState(() {
//              counter++;
//            });
          },
        ),


      ),

    );

  }

}
