import 'package:bloc/bloc.dart';

part 'popular_event.dart';
part 'popular_state.dart';

class PopularBloc extends Bloc<PopularEvent, PopularState> {
  PopularBloc() : super(const PopularState()) {
    on<PopularEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
