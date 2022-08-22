


import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../../../dto/location/location.dart';
import '../../../generated/l10n.dart';

class LocationListTile extends StatelessWidget {
  const LocationListTile(this.location, {Key? key}) : super(key: key);

  final Location location;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      location.type!,
                      style: AppStyles.s10w500.copyWith(
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      location.name ?? S.of(context).noData,
                      style: AppStyles.s16w500.copyWith(
                        height: 1.6,
                        leadingDistribution: TextLeadingDistribution.even,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      location.dimension ?? S.of(context).noData,
                      style: const TextStyle(
                        color: AppColors.neutral2,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
