import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

enum _actions { resource, project, blog, favorite }

class AddNewMenuButton extends StatelessWidget {
  const AddNewMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);
    final ScaffoldMessengerState sm = ScaffoldMessenger.of(context);

    return PopupMenuButton<_actions>(
      icon: const Icon(Icons.add),
      onSelected: (_actions value) {
        switch (value) {
          case _actions.resource:
            sm.showSnackBar(SnackBar(content: Text(s.new_resource)));
            break;
          case _actions.project:
            sm.showSnackBar(SnackBar(content: Text(s.new_project)));
            break;
          case _actions.blog:
            sm.showSnackBar(SnackBar(content: Text(s.start_blog)));
            break;
          case _actions.favorite:
            sm.showSnackBar(SnackBar(content: Text(s.add_favorite)));
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: _actions.resource,
          padding: EdgeInsets.zero,
          child: ListTile(
            leading: const Icon(Icons.add),
            title: Text(s.new_resource),
          ),
        ),
        PopupMenuItem(
          value: _actions.project,
          padding: EdgeInsets.zero,
          child: ListTile(
            leading: const Icon(Icons.add),
            title: Text(s.new_project),
          ),
        ),
        PopupMenuItem(
          value: _actions.blog,
          padding: EdgeInsets.zero,
          child: ListTile(
            leading: const Icon(Icons.note_add),
            title: Text(s.start_blog),
          ),
        ),
        PopupMenuItem(
          value: _actions.favorite,
          padding: EdgeInsets.zero,
          child: ListTile(
            leading: const Icon(Icons.star),
            title: Text(s.add_favorite),
          ),
        ),
      ],
    );
  }
}
