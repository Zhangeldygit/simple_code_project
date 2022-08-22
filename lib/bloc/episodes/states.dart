
import '../../dto/episode/episode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'states.freezed.dart';

@freezed
class StateBlocEpisodes with _$StateBlocEpisodes {
  const factory StateBlocEpisodes.initial() = StateEpisodesInitial;
  const factory StateBlocEpisodes.loading() = StateEpisodesLoading;
  const factory StateBlocEpisodes.data(
      {required List<Episode> data,
        @Default(false) bool isLoading,
        String? errorMessage}) = StateEpisodesData;
  const factory StateBlocEpisodes.error(String error) = StateEpisodesError;
}