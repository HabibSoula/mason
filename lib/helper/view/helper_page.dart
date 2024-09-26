import 'package:flutter/widgets.dart';

import '../helper.dart';

class HelperPage extends StatelessWidget {
  const HelperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HelperBloc(),
      child: const HelperView(),
    );
  }
}

class HelperView extends StatelessWidget {
  const HelperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HelperBloc, HelperState>(
      builder: (context, state) {
        return switch (state) {

HelperState1() => const SizedBox(),

HelperState2() => const SizedBox(),

HelperState3() => const SizedBox(),

HelperState4() => const SizedBox(),

        }
      },
    );
  }
}
