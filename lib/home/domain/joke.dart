import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'joke.freezed.dart';
part 'joke.g.dart';

/// Joke...
@freezed
class Joke with _$Joke {
  const factory Joke({
    required int id,
    required String type,
    required String setup,
    required String punchline,
  }) = _Joke;

  factory Joke.fromJson(Map<String, Object?> json) => _$JokeFromJson(json);
}
