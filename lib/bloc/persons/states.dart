
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dto/person/person.dart';

part 'states.freezed.dart';


@freezed
class StateBlocPersons with _$StateBlocPersons{
  const factory StateBlocPersons.initial() = StatePersonsInitial;
  const factory StateBlocPersons.loading() = StatePersonsLoading;
  const factory StateBlocPersons.data({required List<Person> data}) = StatePersonsData;
  const factory StateBlocPersons.error(String error) = StatePersonsError;
}
