import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_testdrive/core/master_detail_flow_provider.dart';
import 'package:flutter_bloc_testdrive/home/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_testdrive/settings/business/bloc/settings_page_bloc.dart';
import 'package:flutter_bloc_testdrive/settings/presentation/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MasterDetailFlowProvider(
      child: BlocProvider(
        create: (context) => SettingsPageBloc(),
        child: MaterialApp(
          initialRoute: "/home",
          routes: {
            "/home": (context) => HomePage(),
            "/settings": (context) => SettingsPage(),
          },
          title: 'Flutter BLoC Test-Drive',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            brightness: Brightness.light,
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}
