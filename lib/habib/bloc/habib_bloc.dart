import 'package:bloc/bloc.dart';

part 'habib_event.dart';
part 'habib_state.dart';

class HabibBloc extends Bloc<HabibEvent, HabibState> {
  HabibBloc() : super(const HabibState()) {
    on<HabibEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
