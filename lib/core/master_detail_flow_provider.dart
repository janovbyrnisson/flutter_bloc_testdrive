import 'package:bloc_td/shared/business/client_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MasterDetailFlowProvider extends StatelessWidget {
  const MasterDetailFlowProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClientPageCubit(),
      child: child,
    );
  }
}
