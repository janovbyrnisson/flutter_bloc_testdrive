import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_testdrive/home/business/home_page_event.dart';
import 'package:flutter_bloc_testdrive/home/business/home_page_state.dart';
import 'package:flutter_bloc_testdrive/home/data/jokes_repository.dart';

///
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  ///
  HomePageBloc(this.jokesRepo) : super(const HomePageState.initial()) {
    on<HomePageGetCards>((event, emit) => _loadNewCards(emit));
  }

  final JokesRepository jokesRepo;

  Future _loadNewCards(Emitter<HomePageState> emit) async {
    emit(const HomePageState.loading());
    try {
      final jokes = await jokesRepo.fetchJokes(count: 5);
      emit(HomePageState.success(jokes));
    } catch (e) {
      emit(
        const HomePageState.error("Couldn't get any jokes due to an error 😕"),
      );
    }
  }
}
