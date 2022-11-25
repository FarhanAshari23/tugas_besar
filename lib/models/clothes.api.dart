import 'dart:convert';
import 'clothes.dart';
import 'package:http/http.dart' as http;

class ClothesApi {
  static Future<List<Clothes>> getClothes() async {
    var uri = Uri.https(
        'apidojo-hm-hennes-mauritz-v1.p.rapidapi.com', '/products/list', {
      "country": "us",
      "lang": "en",
      "currentpage": "0",
      "pagesize": "30",
      "categories": "men_all",
      "concepts": "H&M MAN"
    });

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "d68463b688mshf5d08deb0e283a4p1a6a89jsn92e4111c22fb",
      "X-RapidAPI-Host": "apidojo-hm-hennes-mauritz-v1.p.rapidapi.com",
      "useQueryString": 'true'
    });

    Map data = jsonDecode(response.body);
    // ignore: no_leading_underscores_for_local_identifiers
    List _temp = [];

    for (var i in data['results']) {
      _temp.add(i['defaultArticle']);
    }

    return Clothes.clothesFromSnapshot(_temp);
  }
}
