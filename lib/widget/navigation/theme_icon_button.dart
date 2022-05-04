import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/theme_notifier.dart';

class ThemeIconButton extends StatelessWidget {
  const ThemeIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) => IconButton(
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) =>
                ScaleTransition(scale: animation, child: child),
            child: Icon(
              themeNotifier.isDark ? Icons.nightlight_round : Icons.wb_sunny,
              key: ValueKey<bool>(themeNotifier.isDark),
            ),
          ),
          onPressed: () {
            themeNotifier.isDark = !themeNotifier.isDark;
          },
        ),
      );
}
