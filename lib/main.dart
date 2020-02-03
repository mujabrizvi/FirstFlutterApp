//i need to import a helper library
// from flutter to get content on screen
import 'package:flutter/material.dart';


//define the   'main' function to run when our app starts

void main()
{
  //MaterialApp contains the core functionalities of our app
  var app = MaterialApp(
    //named parameter which is used as default route
    //or widget to show on our screen when the application first starts up
    //to this we assigned a scaffold
    home:Scaffold(

      appBar: AppBar(
        title: Text("O Sheeba"
        ),
      ),

      floatingActionButton: FloatingActionButton(
        //child: Text("+"),

        //to place anything inside this button i used the child parameter
        child: Icon(Icons.check),
        ///////////////////////////////////////////////////////////////////////////////////////////////backgroundColor: Colors.lightGreenAccent,
        //this function is called when the button is pressed
        onPressed: (){
          print("O SHEEBA PAYARA");
        },
      ),


    ),

  );


  runApp(app);
}

//create a new text widget to show some text on the screen
