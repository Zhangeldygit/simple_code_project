part of '../bloc_episodes.dart';

extension Fetch on BlocEpisodes {
  Future<void> _fetch(
    EventEpisodes event,
    Emitter<StateBlocEpisodes> emit,
  ) async {
    emit(const StateBlocEpisodes.loading());

    final result = await repo.fetch();

    if (result.errorMessage != null) {
      emit(StateBlocEpisodes.error(result.errorMessage!));
      return;
    }
    emit(StateBlocEpisodes.data(data: result.episodes!));

    _currentPage = 1;
  }
}
