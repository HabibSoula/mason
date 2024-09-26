import 'package:bloc/bloc.dart';

part 'summer_event.dart';
part 'summer_state.dart';

class SummerBloc extends Bloc<SummerEvent, SummerState> {
  SummerBloc() : super(const SummerState()) {
    on<SummerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
