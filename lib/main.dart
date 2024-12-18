import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poster_editor/provider/home_bloc_provider.dart';
import 'package:poster_editor/view/edit/edit_page.dart';
import 'package:poster_editor/view/home/bloc/home_bloc.dart';
import 'package:poster_editor/view/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider(create: (context) => HomeBloc(),)
    ], child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> HomePage(),
        '/edit':(context)=> EditPage(),
      },
    ),);
  }
}
