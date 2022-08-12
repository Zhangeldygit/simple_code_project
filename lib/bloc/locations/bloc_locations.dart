


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_project/repo/repo_locations.dart';
import 'states.dart';
part 'events.dart';

class BlocLocations extends Bloc<EventBlocLocations, StateBlocLocations> {
  BlocLocations({
    required this.repo,
  }) : super(const StateBlocLocations.initial()) {
    on<EventLocationsFilter>(
          (event, emit) async {
        emit(const StateBlocLocations.loading());
        final result = await repo.filterLocations(event.location);
        if (result.errorMessage != null) {
          emit(
            StateBlocLocations.error(result.errorMessage!),
          );
          return;
        }
        emit(
          StateBlocLocations.data(data: result.locationsList!),
        );
      },
    );
  }

  final RepoLocations repo;
}