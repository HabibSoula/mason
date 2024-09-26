// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

enum BlocType {
  bloc,
  cubit,
  hydrated_bloc,
  hydrated_cubit,
  replay_bloc,
  replay_cubit,
}

final brickVersions = {
  BlocType.bloc: '^0.3.0',
  BlocType.cubit: '^0.2.0',
  BlocType.hydrated_bloc: '^0.3.0',
  BlocType.hydrated_cubit: '^0.2.0',
  BlocType.replay_bloc: '^0.2.0',
  BlocType.replay_cubit: '^0.2.0',
};

Future<void> run(HookContext context) async {
  final blocType = _blocTypeFromContext(context);
  final progress = context.logger.progress('Making brick ${blocType.name}');
  final name = context.vars['name'] as String;
  final style = context.vars['style'] as String;
  final stateNumberVar = context.vars['state_number'];

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

  // Include 'state_number' and 'states' in vars
  var vars = <String, dynamic>{
    'name': name,
    'style': style,
    'state_number': stateNumber,
    'states': List<int>.generate(stateNumber, (index) => index + 1),
  };
  context.logger.info('Parent Brick - Passing to Child Brick: $vars');

  final brick =
      Brick.path("C:/Users/HabibSoula/Desktop/Project/mason/bricks/bloc/");
  final generator = await MasonGenerator.fromBrick(brick);
  final blocDirectoryName = blocType.toDirectoryName();
  final directory = Directory(
    path.join(Directory.current.path, name.snakeCase, blocDirectoryName),
  );
  final target = DirectoryGeneratorTarget(directory);

  // Pre-generation hook
  await generator.hooks.preGen(vars: vars, onVarsChanged: (v) => vars = v);

  // Generate files with updated vars
  final files = await generator.generate(
    target,
    vars: vars,
    logger: context.logger,
    fileConflictResolution: FileConflictResolution.overwrite,
  );

  // Post-generation hook
  await generator.hooks.postGen(vars: vars);

  final blocExport =
      './$blocDirectoryName/${name.snakeCase}_$blocDirectoryName.dart';
  progress.complete('Made brick ${blocType.name}');
  context.logger.logFilesGenerated(files.length);

  // Update context.vars if needed
  context.vars = {
    ...context.vars,
    'bloc_export': blocExport,
    'is_bloc': blocDirectoryName == 'bloc',
    'states': vars['states'],
  };
}

BlocType _blocTypeFromContext(HookContext context) {
  final type = context.vars['type'] as String;
  switch (type) {
    case 'cubit':
      return BlocType.cubit;
    case 'hydrated_bloc':
      return BlocType.hydrated_bloc;
    case 'hydrated_cubit':
      return BlocType.hydrated_cubit;
    case 'replay_bloc':
      return BlocType.replay_bloc;
    case 'replay_cubit':
      return BlocType.replay_cubit;
    case 'bloc':
    default:
      return BlocType.bloc;
  }
}

extension on BlocType {
  String toDirectoryName() {
    switch (this) {
      case BlocType.bloc:
      case BlocType.hydrated_bloc:
      case BlocType.replay_bloc:
        return 'bloc';
      case BlocType.cubit:
      case BlocType.hydrated_cubit:
      case BlocType.replay_cubit:
        return 'cubit';
    }
  }
}

extension on Logger {
  void logFilesGenerated(int fileCount) {
    if (fileCount == 1) {
      this
        ..info(
          '${lightGreen.wrap('\u2713')} '
          'Generated $fileCount file:',
        )
        ..flush((message) => info(darkGray.wrap(message)));
    } else {
      this
        ..info(
          '${lightGreen.wrap('\u2713')} '
          'Generated $fileCount file(s):',
        )
        ..flush((message) => info(darkGray.wrap(message)));
    }
  }
}
