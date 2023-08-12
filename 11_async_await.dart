void main() async {
  print("Start program");

  try{
    final value = await httpGet('ponchos.tech/about-me');
    print(value);
  } catch (messageError) {
    print("We have a problem, Error $messageError");
  } 

  print("Finish program");
}


Future<String> httpGet( String url ) async {
  await Future.delayed(Duration(seconds: 1));

  throw "Http 404";

  // return "Http response";
}
