import 'package:flip_card/flip_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_testdrive/home/business/home_page_bloc.dart';
import 'package:flutter_bloc_testdrive/home/data/jokes_repository.dart';
import 'package:flutter_bloc_testdrive/home/domain/joke.dart';
import 'package:flutter_bloc_testdrive/settings/business/bloc/settings_page_bloc.dart';
import 'package:flutter_bloc_testdrive/shared/presentation/client_page.dart';
import 'package:flutter/material.dart';

//----------------------------------------------------------------------------------------------------------------------
//
//  HOME PAGE WIDGET
//
//----------------------------------------------------------------------------------------------------------------------

class HomePage extends StatelessWidget {
  //--------------------------------------------------------------------------------------------------------------------
  //  Construct
  //--------------------------------------------------------------------------------------------------------------------

  const HomePage({super.key});

  //--------------------------------------------------------------------------------------------------------------------
  //  Props
  //--------------------------------------------------------------------------------------------------------------------

  final double cardAspectRatio = 9 / 13;
  final int cardDesiredWidth = 300;
  final int maxCardsInRow = 8;

  //--------------------------------------------------------------------------------------------------------------------
  //  UI Event Handlers
  //--------------------------------------------------------------------------------------------------------------------

  void getCards(BuildContext context) {
    context.read<HomePageBloc>().add(HomePageEvent.getCards(
        context.read<SettingsPageBloc>().state.numberOfCards));
  }

  //--------------------------------------------------------------------------------------------------------------------
  //  Build
  //--------------------------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return ClientPage(
      child: BlocProvider(
        create: (context) => HomePageBloc(JokesRepo())
          ..add(HomePageEvent.getCards(
              context.read<SettingsPageBloc>().state.numberOfCards)),
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
        crossAxisCount: (MediaQuery.of(context).size.width / cardDesiredWidth)
            .floor()
            .clamp(1, maxCardsInRow),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: cardAspectRatio,
      ),
      children: jokes
          .map(
            (e) => FlipCard(
              fill: Fill.fillBack,
              direction: FlipDirection.HORIZONTAL,
              front: _CardFace(
                facing: _CardFacing.front,
                message: e.setup,
              ),
              back: _CardFace(
                facing: _CardFacing.back,
                message: e.punchline,
              ),
            ),
          )
          .toList(),
    );
  }
}

//----------------------------------------------------------------------------------------------------------------------
//
//  CARD FACE WIDGET
//
//----------------------------------------------------------------------------------------------------------------------

/// Defines card facings
enum _CardFacing { front, back }

/// Defines the visuals of a card face
class _CardFace extends StatelessWidget {
  const _CardFace({Key? key, required this.facing, required this.message})
      : super(key: key);

  final _CardFacing facing;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: facing == _CardFacing.back
            ? Colors.deepOrange.shade600
            : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        border: facing == _CardFacing.back
            ? null
            : Border.all(width: 5, color: Colors.blueGrey.shade400),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(70),
            offset: const Offset(0, 2),
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Icon(
              facing == _CardFacing.back
                  ? Icons.sentiment_very_satisfied_rounded
                  : Icons.sentiment_satisfied_alt_rounded,
              color: facing == _CardFacing.back
                  ? Colors.white
                  : Colors.amber.shade200,
              size: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              message,
              style: TextStyle(
                color: facing == _CardFacing.back
                    ? Colors.white
                    : Colors.blueGrey.shade600,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Tooltip(
              message: "Flip Card",
              child: Icon(
                Icons.flip_camera_android_rounded,
                color: facing == _CardFacing.back
                    ? Colors.white54
                    : Colors.blueGrey.shade600,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
