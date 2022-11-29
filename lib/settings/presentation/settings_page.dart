import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_testdrive/settings/business/bloc/settings_page_bloc.dart';
import 'package:flutter_bloc_testdrive/shared/presentation/client_page.dart';

//----------------------------------------------------------------------------------------------------------------------
//
//  SETTINGS PAGE WIDGET
//
//----------------------------------------------------------------------------------------------------------------------

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final _numberOfCardsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ClientPage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          //  Page Title
          //
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Settings",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Divider(),

          //
          //  Number of cards on Home setting
          //
          SizedBox(
            width: 200,
            child: BlocBuilder<SettingsPageBloc, SettingsPageState>(
              builder: (context, state) {
                return TextField(
                  controller: _numberOfCardsController
                    ..text = state.numberOfCards.toString(),
                  decoration: InputDecoration(
                    labelText: "Cards on Home Page",
                    hintText: "Between 1 and 10",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  final numOfCards =
                      int.tryParse(_numberOfCardsController.text);
                  if (numOfCards != null &&
                      numOfCards > 0 &&
                      numOfCards <= 10) {
                    context
                        .read<SettingsPageBloc>()
                        .add(SettingsPageEvent.set(numOfCards));

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Number of cards on Home page is set."),
                      ),
                    );
                  }
                },
                child: const Text("Set"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
