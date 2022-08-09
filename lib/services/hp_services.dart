import 'package:http/http.dart' as http;

import '../models/hp_model.dart';

class HPService {
  Future<List<HpCharacters>> fetchHPInformation() async {

    final Uri url = Uri(
      scheme: 'https',
      host: 'own-hp-api.herokuapp.com',
      path: 'api/characters',
    );

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return (response.body as List).map((e) => HpCharacters.fromJson(e))
      .toList();
    } else {
      throw Exception("Failed to load Hogwarts Information.");
    }
  }
}