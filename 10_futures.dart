void main(){
  print("Start program");

  httpGet('url').then((value){
    print(value);
  }).catchError((messageError){
    print(messageError);
  });

  print("Finish program");
}


Future httpGet( String url){
  return Future.delayed(Duration(seconds: 1), (){
    throw 'Http error 404';
    // return 'Htp response';
  });
}
