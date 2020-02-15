//import flutter helper library

import 'package:flutter/material.dart';

//this is the widget
class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    //here it is returning the instance of AppState
    return AppState();
  }

}


//this is widget state
class AppState extends State<App>{
  int counter= 0;
//this class must extend the stateless "StatelessWidget" base class
//must define a build method that returns
//the widgets that *this custom widget* will show
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
            print("Test");

            //this is used to update the widget value whenever it is changed
            setState(() {
              counter++;
            });
          },
        ),


      ),

    );

  }

}
