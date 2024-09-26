import 'package:bloc/bloc.dart';

part 'x_event.dart';
part 'x_state.dart';

class XBloc extends Bloc<XEvent, XState> {
  XBloc() : super(const XState()) {
    on<XEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
