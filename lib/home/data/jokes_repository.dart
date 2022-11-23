import 'dart:convert';

import 'package:flutter_bloc_testdrive/home/domain/joke.dart';
import 'package:http/http.dart' as http;

//----------------------------------------------------------------------------------------------------------------------
//
//  INTERFACE
//
//----------------------------------------------------------------------------------------------------------------------

/// Contract for Jokes Repository that can be implemented and injected.
/// Defines methods for fetching jokes from the Jokes API.
abstract class JokesRepository {
  Future<List<Joke>> fetchJokes({int count = 3});
}

//----------------------------------------------------------------------------------------------------------------------
//
//  IMPLEMENTATION
//
//----------------------------------------------------------------------------------------------------------------------

/// Actual implementation of JokesRepository contract to provide joke fetching functionality.
class JokesRepo implements JokesRepository {
  @override
  Future<List<Joke>> fetchJokes({int count = 3}) async {
    final response = await http
        .get(Uri.parse("https://official-joke-api.appspot.com/jokes/ten"));

    if (response.statusCode == 200) {
      final decodedResponse = json.decode(response.body);
      return List<Joke>.from(
              decodedResponse.map((model) => Joke.fromJson(model)))
          .take(count)
          .toList();
    } else {
      throw Exception('Failed to load jokes.');
    }
  }
}
