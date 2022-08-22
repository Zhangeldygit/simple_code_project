

import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../../../dto/episode/episode.dart';
import '../../../generated/l10n.dart';

class EpisodeListTile extends StatelessWidget {
  const EpisodeListTile(this.episode, {Key? key}) : super(key: key);

  final Episode episode;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
            colors: [
              AppColors.primary,
              AppColors.primary.withOpacity(0.5)
            ],
            begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          episode.episode!,
                          style: AppStyles.s16w400.copyWith(
                            letterSpacing: 1.5,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          episode.name ?? S.of(context).noData,
                          style: AppStyles.s16w500.copyWith(
                            height: 1.6,
                            leadingDistribution: TextLeadingDistribution.even,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          episode.air_date ?? S.of(context).noData,
                          style: AppStyles.s16w400.copyWith(
                              letterSpacing: 1.5,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.white,)
          ],
        ),
      ),
    );
  }
}