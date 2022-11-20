import 'package:bloc_td/shared/business/client_page_cubit.dart';
import 'package:bloc_td/shared/presentation/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const double menuOpenedWidth = 200;
const double menuClosedWidth = 40;

class ClientPage extends StatelessWidget {
  const ClientPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientPageCubit, bool>(
      builder: (_, menuIsOpened) {
        return SafeArea(
          child: Stack(
            children: [
              //
              //  Menu
              //
              AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 100,
                ),
                width: menuIsOpened ? menuOpenedWidth : menuClosedWidth,
                top: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          _.read<ClientPageCubit>().toggleMenu();
                        },
                      ),
                      const SizedBox.square(
                        dimension: 20,
                      ),
                      MainMenu(itemsVisible: menuIsOpened),
                    ],
                  ),
                ),
              ),

              //
              //  Body
              //
              AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 100,
                ),
                left: menuIsOpened ? menuOpenedWidth : menuClosedWidth,
                top: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  color: Colors.purple,
                  child: Scaffold(
                    backgroundColor: Colors.amber.shade100,
                    extendBody: true,

                    // Actionbar can be filled with actions
                    appBar: AppBar(
                      backgroundColor: Colors.amber.shade300,
                      toolbarHeight: 5, // Fer empty appBar, and design purposes
                    ),

                    // Page body
                    body: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(8.0),
                        child: child,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
