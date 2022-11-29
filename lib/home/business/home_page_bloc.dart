import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_testdrive/home/data/jokes_repository.dart';
import 'package:flutter_bloc_testdrive/home/domain/joke.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_bloc.freezed.dart';
part 'home_page_event.dart';
part 'home_page_state.dart';

//----------------------------------------------------------------------------------------------------------------------
//
//  HOME PAGE BLOC
//
//----------------------------------------------------------------------------------------------------------------------

///
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  //--------------------------------------------------------------------------------------------------------------------
  //  Construct
  //--------------------------------------------------------------------------------------------------------------------

  ///
  HomePageBloc(this.jokesRepo) : super(const _HomePageIntial()) {
    on<HomePageGetCards>((event, emit) => _loadNewCards(event, emit));
  }

  //--------------------------------------------------------------------------------------------------------------------
  //  Props
  //--------------------------------------------------------------------------------------------------------------------

  final JokesRepository jokesRepo;

  //--------------------------------------------------------------------------------------------------------------------
  //  Event Handler Methods
  //--------------------------------------------------------------------------------------------------------------------

  Future _loadNewCards(
      HomePageGetCards event, Emitter<HomePageState> emit) async {
    emit(const HomePageState.loading());
    try {
      final jokes = await jokesRepo.fetchJokes(count: event.numOfCards);
      emit(HomePageState.success(jokes));
    } catch (e) {
      emit(
        const HomePageState.error("Couldn't get any jokes due to an error 😕"),
      );
    }
  }
}
