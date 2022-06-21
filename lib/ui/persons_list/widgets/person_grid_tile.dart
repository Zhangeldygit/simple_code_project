
import 'package:flutter/material.dart';
import 'package:simple_code_project/constants/app_colors.dart';
import 'package:simple_code_project/constants/app_styles.dart';
import 'package:simple_code_project/dto/person.dart';
import 'package:simple_code_project/generated/l10n.dart';
import 'package:simple_code_project/widgets/user_avatar.dart';

class PersonGridTile extends StatelessWidget {
  const PersonGridTile(this.person, {Key? key}) : super(key: key);

  final Person person;

  Color _statusColor(String? status) {
    if (status == 'Dead') return Colors.red;
    if (status == 'Alive') return const Color(0xff00c48c);
    return Colors.grey;
  }

  String _statusLabel(String? status) {
    if (status == 'Dead') return S.current.dead;
    if (status == 'Alive') return S.current.alive;
    return S.current.noData;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAvatar(
          person.image,
          radius: 60.0,
          margin: const EdgeInsets.only(bottom: 20.0),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _statusLabel(person.status).toUpperCase(),
                      style: AppStyles.s10w500.copyWith(
                        letterSpacing: 1.5,
                        color: _statusColor(
                          person.status,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      person.name ?? S.of(context).noData,
                      textAlign: TextAlign.center,
                      style: AppStyles.s16w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${person.species ?? S.of(context).noData}, ${person.gender ?? S.of(context).noData}',
                      style: const TextStyle(
                        color: AppColors.neutral2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
