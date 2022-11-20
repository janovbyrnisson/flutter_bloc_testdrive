import 'package:flutter_bloc_testdrive/core/master_detail_flow_provider.dart';
import 'package:flutter_bloc_testdrive/home/presentation/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MasterDetailFlowProvider(
      child: MaterialApp(
        title: 'Flutter BLoC Test-Drive',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          brightness: Brightness.light,
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
