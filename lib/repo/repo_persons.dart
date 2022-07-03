// ignore_for_file: avoid_print

import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:simple_code_project/dto/person.dart';
import 'package:simple_code_project/generated/l10n.dart';

class RepoPersons {
  Future<ResultRepoPersons> readPersons() async {
    try {
      final url = Uri.parse('https://rickandmortyapi.com/api/character');
      final result = await http.get(url);
      final data = jsonDecode(result.body);
      final personsListJson = data['results'] as List;
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
