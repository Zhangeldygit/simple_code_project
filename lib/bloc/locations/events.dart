part of 'bloc_locations.dart';

abstract class EventBlocLocations {}

class EventLocationsFilter extends EventBlocLocations {
  EventLocationsFilter(this.location);

  final String location;
}