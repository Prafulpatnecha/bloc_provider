import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poster_editor/view/home/bloc/home_bloc.dart';
import 'package:poster_editor/view/home/bloc/home_event.dart';

import 'bloc/home_state.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final blocHomeCreate = context.read<HomeBloc>();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Text(state.value,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30),);
            },
          ),
        ],
      ),
      floatingActionButton: Row(
        spacing: 30,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
            // blocHomeCreate.add(HomeSetNameEvent());
            // blocHomeCreate.add(HomeResetNameEvent());
            Navigator.of(context).pushNamed("/edit");
          }, child: Icon(Icons.navigate_before),),
          FloatingActionButton(onPressed: () {
            blocHomeCreate.add(HomeSetNameEvent());
            // blocHomeCreate.add(HomeResetNameEvent());
          }, child: Icon(Icons.ad_units),),
        ],
      ),
    );
  }
}
