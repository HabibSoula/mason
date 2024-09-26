import 'package:bloc/bloc.dart';

part 'senior_event.dart';
part 'senior_state.dart';

class SeniorBloc extends Bloc<SeniorEvent, SeniorState> {
  SeniorBloc() : super(const SeniorState()) {
    on<SeniorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
