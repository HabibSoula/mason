import 'package:bloc/bloc.dart';

part 'end_event.dart';
part 'end_state.dart';

class EndBloc extends Bloc<EndEvent, EndState> {
  EndBloc() : super(const EndState()) {
    on<EndEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
