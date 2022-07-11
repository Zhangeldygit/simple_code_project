// ignore_for_file: avoid_print



import '../dto/person.dart';
import '../generated/l10n.dart';
import 'api.dart';

class RepoPersons {
  RepoPersons({required this.api});

  final Api api;

  Future<ResultRepoPersons> filterByName(String name) async {
    try {
      final result = await api.dio.get(
        '/character/',
        queryParameters: {
          "name": name,
        },
      );

      final List personsListJson = result.data['results'] ?? [];
      final personsList = personsListJson
          .map(
            (item) => Person.fromJson(item),
          )
          .toList();
      return ResultRepoPersons(personsList: personsList);
    } catch (error) {
      print('🏐 Error : $error');
      return ResultRepoPersons(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }
}

class ResultRepoPersons {
  ResultRepoPersons({
    this.errorMessage,
    this.personsList,
  });

  final String? errorMessage;
  final List<Person>? personsList;
}
