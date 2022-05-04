import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class UserDrawerIconButton extends StatelessWidget {
  const UserDrawerIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      position: BadgePosition.bottomEnd(bottom: 4,end: 4),
      badgeContent: const Text('12'),
      ignorePointer: true,
      child: IconButton(
        icon: const Icon(Icons.person),
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
      ),
    );
  }
}
