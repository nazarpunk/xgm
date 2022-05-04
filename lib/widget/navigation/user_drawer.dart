import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class UserDrawer extends StatelessWidget {
  const UserDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    final MediaQueryData m = MediaQuery.of(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(bottom: m.padding.bottom),
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: const Text('UserName'),
            accountEmail: Text.rich(
              TextSpan(
                text: '${s.level}: ',
                children: const [
                  TextSpan(
                      text: '12',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '\nXP: '),
                  TextSpan(
                      text: '12345',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' / 40000')
                ],
              ),
            ),
            currentAccountPicture: const Placeholder(),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(s.profile_settings),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: Text(s.favorites),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.arrow_circle_up),
            title: Text(s.abilities),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.email),
            title: Text(s.private_messages),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: Text(s.tasks),
            trailing: Badge(
              badgeContent: const Text('1'),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: Text(s.followers),
            trailing: Badge(
              badgeContent: const Text('12'),
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.list_alt),
            title: Text(s.my_resources),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.work),
            title: Text(s.my_projects),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(s.profile_settings),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: Text(s.sign_out),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
