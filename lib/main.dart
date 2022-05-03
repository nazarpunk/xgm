import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';
import 'screen/home.dart';
import 'utils/language_notifier.dart';
import 'utils/theme_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ChangeNotifierProvider<LanguageNotifier>(
        create: (_) => LanguageNotifier(),
        child: Builder(
          builder: (context) => ChangeNotifierProvider(
            create: (_) => ThemeNotifier(),
            child: Consumer<ThemeNotifier>(
              builder: (context, ThemeNotifier themeNotifier, child) =>
                  MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'xgm.guru',
                scrollBehavior: _MaterialScrollBehavior(),
                theme:
                    themeNotifier.isDark ? ThemeData.light() : ThemeData.dark(),
                home: const ScreenHome(),
                locale: Provider.of<LanguageNotifier>(context, listen: true)
                    .currentLocale,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
              ),
            ),
          ),
        ),
      );
}

class _MaterialScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
