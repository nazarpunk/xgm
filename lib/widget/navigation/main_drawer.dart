import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    final MediaQueryData m = MediaQuery.of(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: m.padding.top, bottom: m.padding.bottom),
        children: [
          ListTile(
            title: Text(s.home),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: Text(s.articles),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.projects),
            trailing: Badge(
              badgeContent: const Text('12'),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.resources),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.qa),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.chat),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: Text(s.help),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.site_rules),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.users),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.blogs),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.abyss),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.forum_archive),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.levels_and_constants),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.tech_support),
            onTap: () {},
          ),
          ListTile(
            title: Text(s.contact_us),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
