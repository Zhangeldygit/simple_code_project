


import '../dto/location.dart';
import '../generated/l10n.dart';
import 'api.dart';

class RepoLocations {
  RepoLocations({required this.api});

  final Api api;

  Future<ResultRepoLocations> filterLocations(String location) async {
    try {
      final result = await api.dio.get(
        '/location/',
        queryParameters: {
          "name": location,
        },
      );

      final List locationsListJson = result.data['results'] ?? [];
      final locationsList = locationsListJson
          .map(
            (item) => Location.fromJson(item),
      )
          .toList();
      return ResultRepoLocations(locationsList: locationsList);
    } catch (error) {
      print('🏐 Error : $error');
      return ResultRepoLocations(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }
}

class ResultRepoLocations {
  ResultRepoLocations({
    this.errorMessage,
    this.locationsList,
  });

  final String? errorMessage;
  final List<Location>? locationsList;
}