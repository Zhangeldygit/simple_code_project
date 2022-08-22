// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Episode _$$_EpisodeFromJson(Map<String, dynamic> json) => _$_Episode(
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['id'] as int?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      air_date: json['air_date'] as String?,
      episode: json['episode'] as String?,
    );

Map<String, dynamic> _$$_EpisodeToJson(_$_Episode instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'characters': instance.characters,
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'air_date': instance.air_date,
      'episode': instance.episode,
    };
