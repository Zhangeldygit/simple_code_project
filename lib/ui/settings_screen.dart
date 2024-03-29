import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../constants/app_colors.dart';
import '../constants/app_styles.dart';
import '../generated/l10n.dart';
import '../repo/repo_settings.dart';
import '../widgets/app_nav_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).settings,
          style: AppStyles.s20w500,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: AppColors.mainText,
        elevation: 0.0,
      ),
      bottomNavigationBar: const AppNavBar(current: 3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${S.of(context).language}: '),
              DropdownButton<String>(
                value: Intl.getCurrentLocale(),
                items: [
                  DropdownMenuItem(
                    value: 'en',
                    child: Text(
                      S.of(context).english,
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'ru_RU',
                    child: Text(
                      S.of(context).russian,
                    ),
                  ),
                ],
                onChanged: (value) async {
                  if (value == null) return;
                  if (value == 'ru_RU') {
                    await S.load(
                      const Locale('ru', 'RU'),
                    );
                    setState(() {});
                  } else if (value == 'en') {
                    await S.load(
                      const Locale('en'),
                    );
                    setState(() {});
                  }
                  final repoSettings = Provider.of<RepoSettings>(context, listen: false);
                  repoSettings.saveLocale(value);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
