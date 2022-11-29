part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _HomePageIntial;
  const factory HomePageState.loading() = HomePageLoading;
  const factory HomePageState.error(String message) = HomePageError;
  const factory HomePageState.success(List<Joke> jokes) = HomePageSuccess;
}
