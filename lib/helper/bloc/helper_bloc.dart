import 'package:bloc/bloc.dart';

part 'helper_event.dart';
part 'helper_state.dart';

class HelperBloc extends Bloc<HelperEvent, HelperState> {
  HelperBloc() : super(const HelperState()) {
    on<HelperEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
