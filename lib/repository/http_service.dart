import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import '../model/drink_model.dart';

class HttpService extends ChangeNotifier {

  final String postURL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=rum";

     Drink? _drinkModel;

  Drink? get drinkModel => _drinkModel;



  Future<Drink?> getPost() async {
    Response res = await get(Uri.parse(postURL));

    if(res.statusCode == 200 )
    {
     _drinkModel = drinkFromJson(res.body);
      print("Hai :"+_drinkModel.toString());


     notifyListeners();
     return _drinkModel ;

    }
    else{
      throw "error";
    }

  }
}