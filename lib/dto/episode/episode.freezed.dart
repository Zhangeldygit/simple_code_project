// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  DateTime? get created => throw _privateConstructorUsedError;
  List<String>? get characters => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get air_date => throw _privateConstructorUsedError;
  String? get episode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res>;
  $Res call(
      {DateTime? created,
      List<String>? characters,
      int? id,
      String? name,
      String? url,
      String? air_date,
      String? episode});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res> implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  final Episode _value;
  // ignore: unused_field
  final $Res Function(Episode) _then;

  @override
  $Res call({
    Object? created = freezed,
    Object? characters = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? air_date = freezed,
    Object? episode = freezed,
  }) {
    return _then(_value.copyWith(
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      air_date: air_date == freezed
          ? _value.air_date
          : air_date // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$_EpisodeCopyWith(
          _$_Episode value, $Res Function(_$_Episode) then) =
      __$$_EpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? created,
      List<String>? characters,
      int? id,
      String? name,
      String? url,
      String? air_date,
      String? episode});
}

/// @nodoc
class __$$_EpisodeCopyWithImpl<$Res> extends _$EpisodeCopyWithImpl<$Res>
    implements _$$_EpisodeCopyWith<$Res> {
  __$$_EpisodeCopyWithImpl(_$_Episode _value, $Res Function(_$_Episode) _then)
      : super(_value, (v) => _then(v as _$_Episode));

  @override
  _$_Episode get _value => super._value as _$_Episode;

  @override
  $Res call({
    Object? created = freezed,
    Object? characters = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? air_date = freezed,
    Object? episode = freezed,
  }) {
    return _then(_$_Episode(
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      characters: characters == freezed
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      air_date: air_date == freezed
          ? _value.air_date
          : air_date // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episode implements _Episode {
  const _$_Episode(
      {this.created,
      final List<String>? characters,
      this.id,
      this.name,
      this.url,
      this.air_date,
      this.episode})
      : _characters = characters;

  factory _$_Episode.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeFromJson(json);

  @override
  final DateTime? created;
  final List<String>? _characters;
  @override
  List<String>? get characters {
    final value = _characters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final String? air_date;
  @override
  final String? episode;

  @override
  String toString() {
    return 'Episode(created: $created, characters: $characters, id: $id, name: $name, url: $url, air_date: $air_date, episode: $episode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Episode &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.air_date, air_date) &&
            const DeepCollectionEquality().equals(other.episode, episode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(air_date),
      const DeepCollectionEquality().hash(episode));

  @JsonKey(ignore: true)
  @override
  _$$_EpisodeCopyWith<_$_Episode> get copyWith =>
      __$$_EpisodeCopyWithImpl<_$_Episode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeToJson(
      this,
    );
  }
}

abstract class _Episode implements Episode {
  const factory _Episode(
      {final DateTime? created,
      final List<String>? characters,
      final int? id,
      final String? name,
      final String? url,
      final String? air_date,
      final String? episode}) = _$_Episode;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$_Episode.fromJson;

  @override
  DateTime? get created;
  @override
  List<String>? get characters;
  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get url;
  @override
  String? get air_date;
  @override
  String? get episode;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeCopyWith<_$_Episode> get copyWith =>
      throw _privateConstructorUsedError;
}
