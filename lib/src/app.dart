//import flutter helper libraries

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/widgets/imageListWidget.dart';
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

  //to store the images i need a list
  List<ImageData> imgList = [];


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

    var ImageDataObj = ImageData.fromJson(parsedData);

    // i used this because the image list is changing every time the btn is clicked
    //so to update the list setState is called
    setState(() {
      imgList.add(ImageDataObj);
    });



  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //named parameter which is used as default route
      //or widget to show on our screen when the application first starts up
      //to this we assigned a scaffold
      home:Scaffold(


        //Here in the body of scaffold i added my created imageview widget class
        // and give it the list of images to render on screen
        body: ImageListWidget(imgList),

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
