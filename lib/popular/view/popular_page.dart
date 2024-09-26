import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../popular.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PopularBloc(),
      child: const PopularView(),
    );
  }
}

class PopularView extends StatelessWidget {
  const PopularView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularBloc, PopularState>(
      builder: (context, state) {
        return switch (state) {

PopularState1() => const SizedBox(),

PopularState2() => const SizedBox(),

PopularState3() => const SizedBox(),

PopularState4() => const SizedBox(),

PopularState5() => const SizedBox(),

        }
      },
    );
  }
}
