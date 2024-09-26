import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../senior.dart';

class SeniorPage extends StatelessWidget {
  const SeniorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SeniorBloc(),
      child: const SeniorView(),
    );
  }
}

class SeniorView extends StatelessWidget {
  const SeniorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeniorBloc, SeniorState>(
      builder: (context, state) {
        return switch (state) {

SeniorState1() => const SizedBox(),

SeniorState2() => const SizedBox(),

SeniorState3() => const SizedBox(),

        }
      },
    );
  }
}
