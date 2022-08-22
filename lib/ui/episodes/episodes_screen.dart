

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_project/constants/app_colors.dart';
import 'package:simple_code_project/ui/episodes/widgets/body.dart';
import 'package:simple_code_project/widgets/app_nav_bar.dart';

import '../../bloc/episodes/bloc_episodes.dart';
import '../../bloc/episodes/states.dart';
import '../../constants/app_styles.dart';
import '../../generated/l10n.dart';

class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        bottomNavigationBar: const AppNavBar(current: 2),
        appBar: AppBar(
          centerTitle: true,
          title: Text(S.of(context).episodes, style: AppStyles.s20w500,),
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: BlocBuilder<BlocEpisodes, StateBlocEpisodes>(
                      buildWhen: (previous, next) {
                        if(previous.runtimeType != next.runtimeType) {
                          return true;
                        } else {
                          final previousDataLength = previous.mapOrNull(
                            data: (state) => state.data.length,
                          );

                          final nextDataLength = next.mapOrNull(
                            data: (state) => state.data.length,
                          );
                          return previousDataLength != nextDataLength;
                        }
                      },
                      builder: (context, state) {
                        return state.map(
                            initial: (_) => const SizedBox.shrink(),
                            loading: (_) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            data: (state) => Body(data: state.data),
                            error: (state) => ErrorWidget(state.error));
                      },
                    ),
                  ),
                ],
              ),
            ),
            BlocConsumer<BlocEpisodes, StateBlocEpisodes>(
                builder: (context, state) {
                  final isLoading = state.maybeMap(
                      data: (state) => state.isLoading, orElse: () => false);
                  return Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: isLoading
                          ? const LinearProgressIndicator()
                          : const SizedBox.shrink());
                }, listener: (context, state) {
              state.mapOrNull(data: (state) {
                if (state.errorMessage != null) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title:  Text(S.of(context).error),
                          content: Text(state.errorMessage!),
                        );
                      });
                }
              });
            }),
          ],
        ),
      ),
    );
  }
}
