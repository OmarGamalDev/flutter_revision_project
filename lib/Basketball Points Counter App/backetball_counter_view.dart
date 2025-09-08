import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_revision_project/Basketball%20Points%20Counter%20App/cubit/counter_cubit.dart';
import 'package:flutter_revision_project/Basketball%20Points%20Counter%20App/widgets/backetball_counter_body.dart';

class BacketballCounterView extends StatelessWidget {
  const BacketballCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        backgroundColor: Color(0xfff7f7f6),
        appBar: AppBar(
          backgroundColor: Color(0xfffe9301),
          title: Text(
            "Points Counter",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BacketballCounterBody(),
      ),
    );
  }
}
