import 'package:bloc/bloc.dart';

part 'testing_event.dart';
part 'testing_state.dart';

class TestingBloc extends Bloc<TestingEvent, TestingState> {
  TestingBloc() : super(const TestingState()) {
    on<TestingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
