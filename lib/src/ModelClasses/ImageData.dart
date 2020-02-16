class ImageData{
  int id;
  String url;
  String title;

  ImageData(this.id, this.url, this.title);


  //As the data received by this function is in a form of Map
  //so just give this argument map type (Documentation)
  //This is named Constructor
  ImageData.fromJson(Map<String,dynamic> parsedata)
  {
    id=parsedata['id'];
    url=parsedata['url'];
    title=parsedata['title'];
  }


}