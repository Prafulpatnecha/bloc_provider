import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poster_editor/view/home/bloc/home_event.dart';
import 'package:poster_editor/view/home/bloc/home_state.dart';
TextEditingController textEditingController = TextEditingController();

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(value: "Name")) {
    // TODO: implement

    on<HomeSetNameEvent>(
      (event, emit) => emit(
        HomeState(value: textEditingController.text),
      ),
    );
    on<HomeResetNameEvent>(
      (event, emit) => emit(HomeState(value: "Re Name")),
    );
  }
}
