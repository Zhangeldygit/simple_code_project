

import '../dto/episode/episode.dart';
import '../generated/l10n.dart';
import 'api.dart';

class RepoEpisodes {
  RepoEpisodes({required this.api});

  final Api api;

  Future<ResultRepoEpisodes> fetch() => nextPage(1);

  Future<ResultRepoEpisodes> nextPage(int page) async {
    try {
      final result = await api.dio.get(
        '/episode?page=$page',
      );

      
      final bool isEndOfData = result.data['info']['next'] == null;

      final List json = result.data['results'] ?? [];

      final list =
          json.map((item) => Episode.fromJson(item)).toList();

      return ResultRepoEpisodes(
          episodes: list, isEndOfData: isEndOfData);
    } catch (error) {
      print('🏐 Error : $error');
      return ResultRepoEpisodes(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }
}

class ResultRepoEpisodes {
  ResultRepoEpisodes({this.errorMessage, this.episodes, this.isEndOfData});

  final String? errorMessage;
  final List<Episode>? episodes;
  final bool? isEndOfData;
}