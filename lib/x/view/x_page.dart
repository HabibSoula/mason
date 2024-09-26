import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../x.dart';

class XPage extends StatelessWidget {
  const XPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => XBloc(),
      child: const XView(),
    );
  }
}

class XView extends StatelessWidget {
  const XView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<XBloc, XState>(
      builder: (context, state) {
        return switch (state) {

        }
      },
    );
  }
}
