

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../../../dto/episode/episode.dart';
import '../../../generated/l10n.dart';

class EpisodeDetails extends StatelessWidget {
  const EpisodeDetails({Key? key, required this.episode}) : super(key: key);
  final Episode episode;

  @override
  Widget build(BuildContext context) {
    final date = DateFormat.yMMMMEEEEd().format(episode.created!);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text(S.of(context).episodes, style: AppStyles.s20w500),
        centerTitle: true,
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios, color: AppColors.mainText),
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(episode.name!, style: AppStyles.s20w500.copyWith(letterSpacing: 1.5),),
            const SizedBox(height: 10),
            Text(episode.episode!, style: AppStyles.s14w400.copyWith(letterSpacing: 1.5),),
            const SizedBox(height: 10),
            Text("${S.of(context).aired}: $date", style: AppStyles.s14w400.copyWith(letterSpacing: 1.5),),
          ],
        ),
      ),
    );
  }
}
