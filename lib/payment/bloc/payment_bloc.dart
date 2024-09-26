import 'package:bloc/bloc.dart';

part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentState()) {
    on<PaymentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
