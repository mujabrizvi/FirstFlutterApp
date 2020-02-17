import 'package:flutter/material.dart';
import '../ModelClasses/ImageData.dart';


//this is basically the image view that is displayed on the screen
//this is also the adapter of our list view

class ImageListWidget extends StatelessWidget{
  List<ImageData> argument_from_appDart =[];
  ImageListWidget(this.argument_from_appDart);


  //here itemBuilder is a function that takes two arguments
  // 1) context 2) index
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: argument_from_appDart.length,
        itemBuilder:(context,index){
        //here to access the lsit view item we just have to us ethe index number
        // to refer to that specific item in the list

          return buildImageFromData(argument_from_appDart[index]);
        }
    );
  }

  //to avoid writing too much inside itemBuilder i am creating a new method
  //this function is receiving our model class object at a specific index to work with

    Widget buildImageFromData(ImageData listViewArgument)
    {
      return Container(

        margin: EdgeInsets.all(20.0),
        child: Column(
          children : <Widget>[
            Padding(
              child: Image.network(listViewArgument.url),
              padding: EdgeInsets.only(
                bottom: 8.0,
              ),
            ),


            Padding(
              child: Text(listViewArgument.title),
              padding: EdgeInsets.only(
                left: 8.0,
                bottom: 8.0,
              ),
            ),

          ],
        ),

        //to add border we use decoration property
        //and we use BoxDecoration class inside it to add border
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)

        ),

      );

    }


}