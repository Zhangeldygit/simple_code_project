import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_project/bloc/locations/bloc_locations.dart';
import 'package:simple_code_project/bloc/persons/bloc_persons.dart';
import 'package:simple_code_project/repo/api.dart';
import 'package:simple_code_project/repo/repo_locations.dart';
import 'package:simple_code_project/repo/repo_persons.dart';
import 'package:simple_code_project/repo/repo_settings.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => Api(),
        ),
        RepositoryProvider(
          create: (context) => RepoSettings(),
        ),
        RepositoryProvider(
          create: (context) => RepoPersons(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),
        RepositoryProvider(
          create: (context) => RepoLocations(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BlocPersons(
              repo: RepositoryProvider.of<RepoPersons>(context),
            )..add(EventPersonsFilterByName('')),
          ),
          BlocProvider(
            create: (context) => BlocLocations(
              repo: RepositoryProvider.of<RepoLocations>(context),
            )..add(EventLocationsFilter('')),
          ),
        ],
        child: child,
      ),
    );
  }
}
