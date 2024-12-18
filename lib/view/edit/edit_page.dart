import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home/bloc/home_bloc.dart';
import '../home/bloc/home_event.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final blocHomeCreate = context.read<HomeBloc>();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 30,
        children: [
          FloatingActionButton(onPressed: () {
            // blocHomeCreate.add(HomeSetNameEvent());
            blocHomeCreate.add(HomeResetNameEvent());
          }, child: Icon(Icons.all_out_sharp),),
          FloatingActionButton(onPressed: () {
            blocHomeCreate.add(HomeSetNameEvent());
            // blocHomeCreate.add(HomeResetNameEvent());
          }, child: Icon(Icons.ad_units),),
        ],
      ),
    );
  }
}
