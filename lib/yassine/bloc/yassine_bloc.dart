import 'package:bloc/bloc.dart';

part 'yassine_event.dart';
part 'yassine_state.dart';

class YassineBloc extends Bloc<YassineEvent, YassineState> {
  YassineBloc() : super(const YassineState()) {
    on<YassineEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
