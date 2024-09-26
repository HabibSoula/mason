import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../summer.dart';

class SummerPage extends StatelessWidget {
  const SummerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SummerBloc(),
      child: const SummerView(),
    );
  }
}

class SummerView extends StatelessWidget {
  const SummerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SummerBloc, SummerState>(
      builder: (context, state) {
        return switch (state) {

SummerState1() => const SizedBox(),

SummerState2() => const SizedBox(),

SummerState3() => const SizedBox(),

SummerState4() => const SizedBox(),

        }
      },
    );
  }
}
