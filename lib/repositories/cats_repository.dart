import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pragma/models/cats.dart';

class CatsRepository {
  static Future<List<CatsModel>> getAll() async {
    try {
      var url = Uri.https(
        'api.thecatapi.com',
        '/v1/breeds',
      );

      var headers = {
        'Content-Type': 'application/json',
        'x-api-key': 'bda53789-d59e-46cd-9bc4-2936630fde39',
      };

      var response = await http.get(url, headers: headers);

      List<CatsModel> cats = [];

      List jsonResponse = jsonDecode(response.body);
      cats = jsonResponse.map<CatsModel>((element) {
        return CatsModel.fromJson(element);
      }).toList();

      return cats;
    } catch (e) {
      return [];
    }
  }
}
