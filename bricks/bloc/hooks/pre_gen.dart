import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final style = context.vars['style'];
  final stateNumberVar = context.vars['state_number'];
  context.logger.info('Child Brick - state_number: $stateNumberVar');

  // Parse stateNumberVar to int
  final int stateNumber;
  if (stateNumberVar is int) {
    stateNumber = stateNumberVar;
  } else if (stateNumberVar is String) {
    stateNumber = int.parse(stateNumberVar);
  } else {
    throw Exception(
        'state_number must be an int or a string representing an int');
  }

  context.vars = {
    ...context.vars,
    'use_basic': style == 'basic',
    'use_equatable': style == 'equatable',
    'use_freezed': style == 'freezed',
    'states': List<int>.generate(stateNumber, (index) => index + 1),
  };
  context.logger
      .info('Child Brick - Generated states: ${context.vars['states']}');
}
