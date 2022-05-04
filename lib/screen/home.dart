import 'package:flutter/material.dart';
import 'package:xgm/widget/navigation/add_new_icon_button.dart';
import 'package:xgm/widget/navigation/main_drawer.dart';
import 'package:xgm/widget/navigation/language_icon_button.dart';
import 'package:xgm/widget/navigation/user_drawer.dart';
import 'package:xgm/widget/navigation/user_drawer_icon_button.dart';

import '../generated/l10n.dart';
import '../widget/navigation/theme_icon_button.dart';
import '../widget/spotlight.dart';
import 'profile.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          const LanguageIconButton(),
          const ThemeIconButton(),
          const UserDrawerIconButton(),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: s.add_favorite,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenProfile()),
              );
            },
          ),
          const AddNewMenuButton(),
        ],
      ),
      drawer: const MainDrawer(),
      endDrawer: const UserDrawer(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: const [
          SizedBox(height: 8),
          Spotlight(),
          Divider(),
        ],
      ),
    );
  }
}
