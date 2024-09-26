import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../habib.dart';

class HabibPage extends StatelessWidget {
  const HabibPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HabibBloc(),
      child: const HabibView(),
    );
  }
}

class HabibView extends StatelessWidget {
  const HabibView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabibBloc, HabibState>(
      builder: (context, state) {
        return switch (state) {

HabibState1() => const SizedBox(),

HabibState2() => const SizedBox(),

HabibState3() => const SizedBox(),

HabibState4() => const SizedBox(),

        }
      },
    );
  }
}
