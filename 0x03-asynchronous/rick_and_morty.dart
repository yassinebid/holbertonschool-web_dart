import 'dart:convert';
import 'package:http/http.dart' as http;

printRmCharacters() async {
  final response =
      await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    var data = jsonDecode(response.body);
    List characters = data['results'];
    for (var character in characters) {
      print(character['name']);
    }
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
