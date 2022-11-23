import 'package:flip_card/flip_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_testdrive/home/business/home_page_bloc.dart';
import 'package:flutter_bloc_testdrive/home/business/home_page_event.dart';
import 'package:flutter_bloc_testdrive/home/business/home_page_state.dart';
import 'package:flutter_bloc_testdrive/home/data/jokes_repository.dart';
import 'package:flutter_bloc_testdrive/home/domain/joke.dart';
import 'package:flutter_bloc_testdrive/shared/presentation/client_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //--------------------------------------------------------------------------------------------------------------------
  //  Construct
  //--------------------------------------------------------------------------------------------------------------------

  const HomePage({super.key});

  //--------------------------------------------------------------------------------------------------------------------
  //  UI Event Handlers
  //--------------------------------------------------------------------------------------------------------------------

  void getCards(BuildContext context) {
    context.read<HomePageBloc>().add(const HomePageEvent.getCards());
  }

  //--------------------------------------------------------------------------------------------------------------------
  //  Build
  //--------------------------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return ClientPage(
      child: BlocProvider(
        create: (context) =>
            HomePageBloc(JokesRepo())..add(const HomePageEvent.getCards()),
        child: BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            return Column(
              children: [
                //
                //  Page Title Row
                //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Funny Cards",
                        style: TextStyle(fontSize: 20),
                      ),
                      ElevatedButton(
                        onPressed: state is HomePageLoading
                            ? null
                            : () => getCards(context),
                        child: const Text("Get New Cards"),
                      )
                    ],
                  ),
                ),

                //---
                const Divider(),

                //
                //  Page Body
                //
                state.when(
                  initial: () => Container(),
                  loading: () => _buildLoading(),
                  error: (message) => _buildError(message),
                  success: (jokes) => _buildSuccess(context, jokes),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  /// Builds loading view
  Widget _buildLoading() {
    return const SizedBox.square(
      dimension: 30,
      child: CircularProgressIndicator(),
    );
  }

  /// Builds error view with error message
  Widget _buildError(String message) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        color: Colors.amber.shade100,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(message),
        ),
      ),
    );
  }

  /// Builds gridview with fippable cards that contain the jokes
  Widget _buildSuccess(BuildContext context, List<Joke> jokes) {
    return GridView(
      padding: const EdgeInsets.all(10),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (MediaQuery.of(context).size.width / 350).floor(),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 9 / 16,
      ),
      children: jokes
          .map(
            (e) => FlipCard(
              fill: Fill.fillBack,
              direction: FlipDirection.HORIZONTAL,
              front: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(width: 5, color: Colors.blueGrey.shade400),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(70),
                      offset: const Offset(0, 2),
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    e.setup,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey.shade600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
              ),
              back: Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade600,
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(70),
                      offset: const Offset(0, 2),
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    e.punchline,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
              ),
            ),
          )
          .toList(),
    );
  }
}
