import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../end.dart';

class EndPage extends StatelessWidget {
  const EndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EndBloc(),
      child: const EndView(),
    );
  }
}

class EndView extends StatelessWidget {
  const EndView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EndBloc, EndState>(
      builder: (context, state) {
        return switch (state) {

EndState1() => const SizedBox(),

EndState2() => const SizedBox(),

EndState3() => const SizedBox(),

EndState4() => const SizedBox(),

        }
      },
    );
  }
}
