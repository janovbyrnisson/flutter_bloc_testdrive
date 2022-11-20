import 'package:flutter_bloc_testdrive/shared/presentation/client_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClientPage(
      child: Container(
        child: Text("Home"),
      ),
    );
  }
}
