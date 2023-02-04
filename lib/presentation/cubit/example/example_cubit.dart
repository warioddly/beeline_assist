import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'example_state.dart';

class ExampleCubit extends Cubit<ExampleState> {
  ExampleCubit() : super(ExampleInitial());


  Future<void> getData() async {


    try {

      emit(ExampleLoading());

      await Future.delayed(const Duration(seconds: 13));

      emit(ExampleLoaded());

    }
    catch (error) {
      // Fluttertoast.showToast(msg: 'Ошибка');
    }

  }



}
