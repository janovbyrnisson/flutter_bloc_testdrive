import 'package:flutter_bloc_testdrive/home/domain/joke.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = HomePageIntial;
  const factory HomePageState.loading() = HomePageLoading;
  const factory HomePageState.error(String message) = HomePageError;
  const factory HomePageState.success(List<Joke> jokes) = HomePageSuccess;
}
