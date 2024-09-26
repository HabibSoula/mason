import 'package:bloc/bloc.dart';

part 'opa_event.dart';
part 'opa_state.dart';

class OpaBloc extends Bloc<OpaEvent, OpaState> {
  OpaBloc() : super(const OpaState()) {
    on<OpaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
