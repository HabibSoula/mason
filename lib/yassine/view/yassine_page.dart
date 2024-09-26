import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../yassine.dart';

class YassinePage extends StatelessWidget {
  const YassinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => YassineBloc(),
      child: const YassineView(),
    );
  }
}

class YassineView extends StatelessWidget {
  const YassineView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YassineBloc, YassineState>(
      builder: (context, state) {
        return switch (state) {

YassineState1() => const SizedBox(),

YassineState2() => const SizedBox(),

YassineState3() => const SizedBox(),

        }
      },
    );
  }
}
