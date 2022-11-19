import 'package:bloc_td/core/presentation/client_page/client_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const double menuOpenedWidth = 200;
const double menuClosedWidth = 40;

class ClientPage extends StatelessWidget {
  const ClientPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClientPageCubit(),
      child: BlocBuilder<ClientPageCubit, bool>(
        builder: (_, menuIsOpened) {
          return Stack(
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
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        _.read<ClientPageCubit>().toggleMenu();
                      },
                    ),
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
                child: child,
              )
            ],
          );
        },
      ),
    );
  }
}
