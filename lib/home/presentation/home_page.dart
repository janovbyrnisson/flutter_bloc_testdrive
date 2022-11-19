import 'package:bloc_td/core/presentation/client_page/client_page.dart';
import 'package:bloc_td/core/presentation/client_page/client_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClientPage(
        child: Container(
          color: Colors.amber.shade100,
          child: Text("Test"),
        ),
      ),
    );
  }
}
