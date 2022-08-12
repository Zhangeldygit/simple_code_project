import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_code_project/constants/app_colors.dart';
import 'package:simple_code_project/constants/app_styles.dart';

import '../../../dto/location.dart';
import '../../../generated/l10n.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails(this.location, {Key? key}) : super(key: key);
  final Location location;

  @override
  Widget build(BuildContext context) {
    final date = DateFormat.yMMMMEEEEd().format(location.created!);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios, color: AppColors.mainText),
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(location.name!, style: AppStyles.s20w500.copyWith(letterSpacing: 1.5),),
            const SizedBox(height: 10),
            Text("${location.type} • ${location.dimension}", style: AppStyles.s14w400.copyWith(letterSpacing: 1.5),),
            const SizedBox(height: 10),
            Text("${S.of(context).aired}: $date", style: AppStyles.s14w400.copyWith(letterSpacing: 1.5),),
          ],
        ),
      ),
    );
  }
}
