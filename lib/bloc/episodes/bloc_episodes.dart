import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dto/episode/episode.dart';
import '../../repo/repo_episodes.dart';
import 'states.dart';
part 'events.dart';
part 'parts/fetch.dart';
part 'parts/next_page.dart';

class BlocEpisodes extends Bloc<EventBlocEpisodes, StateBlocEpisodes> {
  BlocEpisodes({
    required this.repo,
  }) : super(const StateBlocEpisodes.initial()) {
    on<EventEpisodes>(_fetch);

    on<EventEpisodesNextPage>(_nextPage);
  }

  final RepoEpisodes repo;

  int _currentPage = 1;

  // end-of-data indicator to not request next page if current one is the last one
  bool _isEndOfData = false;

  // an indicator that the request is in progress. needed to avoid parallel requests
  bool _isInProgress = false;
}
