import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/locations/bloc_locations.dart';
import '../../bloc/locations/states.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../../generated/l10n.dart';
import '../../dto/location/location.dart';
import '../../widgets/app_nav_bar.dart';
import '../persons_list/widgets/search_field.dart';
import 'widgets/location_details.dart';
import 'widgets/location_list_tile.dart';
part 'widgets/_list_view.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const AppNavBar(current: 1),
        body: Column(
          children: [
            SearchField(
              hintText: S.of(context).findLocation,
              onChanged: (value) {
                BlocProvider.of<BlocLocations>(context).add(
                  EventLocationsFilter(value),
                );
              },
            ),
            BlocBuilder<BlocLocations, StateBlocLocations>(
              buildWhen: (previous, current) => previous != current,
              builder: (context, state) {
                var locationsTotal = 0;
                if (state is StateLocationsData) {
                  locationsTotal = state.data.length;
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          S
                              .of(context)
                              .locationsTotal(locationsTotal)
                              .toUpperCase(),
                          style: AppStyles.s10w500.copyWith(
                            letterSpacing: 1.5,
                            color: AppColors.neutral2,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Expanded(
              child: BlocBuilder<BlocLocations, StateBlocLocations>(
                builder: (context, state) {
                  return state.map(
                      initial: (state) => const SizedBox.shrink(),
                      loading: (state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircularProgressIndicator(),
                          ],
                        );
                      },
                      data: (state) {
                        if (state.data.isEmpty) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(S.of(context).locationsListIsEmpty),
                              ),
                            ],
                          );
                        } else {
                          return _ListView(locationsList: state.data);
                        }
                      },
                      error: (state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(state.error),
                            ),
                          ],
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
