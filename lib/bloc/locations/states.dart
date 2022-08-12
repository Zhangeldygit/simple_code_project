

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../dto/location.dart';
part 'states.freezed.dart';

@freezed
class StateBlocLocations with _$StateBlocLocations{
  const factory StateBlocLocations.initial() = StateLocationsInitial;
  const factory StateBlocLocations.loading() = StateLocationsLoading;
  const factory StateBlocLocations.data({required List<Location> data}) = StateLocationsData;
  const factory StateBlocLocations.error(String error) = StateLocationsError;
}