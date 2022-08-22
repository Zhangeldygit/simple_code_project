import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/episodes/bloc_episodes.dart';
import '../../../dto/episode/episode.dart';
import '../../../generated/l10n.dart';
import 'episode_details.dart';
import 'episode_list_tile.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.data}) : super(key: key);

  final List<Episode> data;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(S.of(context).episodesListIsEmpty),
          ),
        ],
      );
    } else {
      return RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<BlocEpisodes>(context).add(EventEpisodes());
        },
        child: NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollNotification) {
              if (notification.metrics.extentAfter == 0) {
                BlocProvider.of<BlocEpisodes>(context)
                    .add(EventEpisodesNextPage());
              }
            }
            return false;
          },
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
              itemBuilder: (context, index) => InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EpisodeDetails(episode: data[index],))),
                  child: EpisodeListTile(data[index])),
              separatorBuilder: (context, _) => const SizedBox(height: 10),
              itemCount: data.length),
        ),
      );
    }
  }
}
