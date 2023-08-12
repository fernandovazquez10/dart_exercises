void main() async {
  print("Start program");

  try{
    final value = await httpGet('ponchos.tech/about-me');
    print("Yahooo!: $value");
  } on Exception catch(messageError){
    print("We have a  $messageError");
  } catch (messageError) {
    print("We have a problem, Error $messageError");
  } finally {
    print("End of try and catch");
  };

  print("Finish program");
} 


Future<String> httpGet( String url ) async {
  await Future.delayed(Duration(seconds: 1));

  throw Exception('No params in url');

  // throw "Http 404";

  // return "Http response";
}
