import 'package:bloc/bloc.dart';

part 'notif_event.dart';
part 'notif_state.dart';

class NotifBloc extends Bloc<NotifEvent, NotifState> {
  NotifBloc() : super(const NotifState()) {
    on<NotifEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
