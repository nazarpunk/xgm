import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xgm/utils/language_notifier.dart';

class LanguageIconButton extends StatelessWidget {
  const LanguageIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageNotifier>(
      builder: (context, LanguageNotifier languageNotifier, child) => IconButton(
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) =>
                ScaleTransition(scale: animation, child: child),
            child: Text(
              languageNotifier.currentLocale.toString() == 'ru' ? 'EN' : 'RU',
              key: ValueKey<Locale>(languageNotifier.currentLocale),
            ),
          ),
          onPressed: () {
            final String l =
                context.read<LanguageNotifier>().currentLocale.toString() ==
                        'ru'
                    ? 'en'
                    : 'ru';
            context.read<LanguageNotifier>().changeLocale(l);
          },
        ),
    );
  }
}
