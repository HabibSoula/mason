import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../testing.dart';

class TestingPage extends StatelessWidget {
  const TestingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TestingBloc(),
      child: const TestingView(),
    );
  }
}

class TestingView extends StatelessWidget {
  const TestingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestingBloc, TestingState>(
      builder: (context, state) {
        return switch (state) {

        }
      },
    );
  }
}
