import 'package:freezed_annotation/freezed_annotation.dart';
part 'episode.freezed.dart';
part 'episode.g.dart';


@freezed
class Episode with _$Episode {
  const factory Episode({
    DateTime? created,
    List<String>? characters,
    int? id,
    String? name,
    String? url,
    String? air_date,
    String? episode,
  }) = _Episode;



  factory Episode.fromJson(Map<String, Object?> json) => _$EpisodeFromJson(json);
}