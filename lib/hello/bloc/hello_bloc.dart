import 'package:bloc/bloc.dart';

part 'hello_event.dart';
part 'hello_state.dart';

class HelloBloc extends Bloc<HelloEvent, HelloState> {
  HelloBloc() : super(const HelloState()) {
    on<HelloEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
