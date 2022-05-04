// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Способности`
  String get abilities {
    return Intl.message(
      'Способности',
      name: 'abilities',
      desc: '',
      args: [],
    );
  }

  /// `Бездна`
  String get abyss {
    return Intl.message(
      'Бездна',
      name: 'abyss',
      desc: '',
      args: [],
    );
  }

  /// `В избранное!`
  String get add_favorite {
    return Intl.message(
      'В избранное!',
      name: 'add_favorite',
      desc: '',
      args: [],
    );
  }

  /// `Статьи`
  String get articles {
    return Intl.message(
      'Статьи',
      name: 'articles',
      desc: '',
      args: [],
    );
  }

  /// `Блоги`
  String get blogs {
    return Intl.message(
      'Блоги',
      name: 'blogs',
      desc: '',
      args: [],
    );
  }

  /// `Чат`
  String get chat {
    return Intl.message(
      'Чат',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Связаться с нами`
  String get contact_us {
    return Intl.message(
      'Связаться с нами',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `Избранное`
  String get favorites {
    return Intl.message(
      'Избранное',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Фолловеры`
  String get followers {
    return Intl.message(
      'Фолловеры',
      name: 'followers',
      desc: '',
      args: [],
    );
  }

  /// `Архив форума`
  String get forum_archive {
    return Intl.message(
      'Архив форума',
      name: 'forum_archive',
      desc: '',
      args: [],
    );
  }

  /// `Справка`
  String get help {
    return Intl.message(
      'Справка',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get home {
    return Intl.message(
      'Главная',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Уровень`
  String get level {
    return Intl.message(
      'Уровень',
      name: 'level',
      desc: '',
      args: [],
    );
  }

  /// `Уровни и константы`
  String get levels_and_constants {
    return Intl.message(
      'Уровни и константы',
      name: 'levels_and_constants',
      desc: '',
      args: [],
    );
  }

  /// `Мои проекты`
  String get my_projects {
    return Intl.message(
      'Мои проекты',
      name: 'my_projects',
      desc: '',
      args: [],
    );
  }

  /// `Мои ресурсы`
  String get my_resources {
    return Intl.message(
      'Мои ресурсы',
      name: 'my_resources',
      desc: '',
      args: [],
    );
  }

  /// `Новый проект`
  String get new_project {
    return Intl.message(
      'Новый проект',
      name: 'new_project',
      desc: '',
      args: [],
    );
  }

  /// `Новый ресурс`
  String get new_resource {
    return Intl.message(
      'Новый ресурс',
      name: 'new_resource',
      desc: '',
      args: [],
    );
  }

  /// `Сообщения`
  String get private_messages {
    return Intl.message(
      'Сообщения',
      name: 'private_messages',
      desc: '',
      args: [],
    );
  }

  /// `Настройки профиля`
  String get profile_settings {
    return Intl.message(
      'Настройки профиля',
      name: 'profile_settings',
      desc: '',
      args: [],
    );
  }

  /// `Проекты`
  String get projects {
    return Intl.message(
      'Проекты',
      name: 'projects',
      desc: '',
      args: [],
    );
  }

  /// `Вопросы`
  String get qa {
    return Intl.message(
      'Вопросы',
      name: 'qa',
      desc: '',
      args: [],
    );
  }

  /// `Ресурсы`
  String get resources {
    return Intl.message(
      'Ресурсы',
      name: 'resources',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get sign_out {
    return Intl.message(
      'Выйти',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Правила сайты`
  String get site_rules {
    return Intl.message(
      'Правила сайты',
      name: 'site_rules',
      desc: '',
      args: [],
    );
  }

  /// `Начать блог`
  String get start_blog {
    return Intl.message(
      'Начать блог',
      name: 'start_blog',
      desc: '',
      args: [],
    );
  }

  /// `Задания`
  String get tasks {
    return Intl.message(
      'Задания',
      name: 'tasks',
      desc: '',
      args: [],
    );
  }

  /// `Тех. поддержка`
  String get tech_support {
    return Intl.message(
      'Тех. поддержка',
      name: 'tech_support',
      desc: '',
      args: [],
    );
  }

  /// `Пользователи`
  String get users {
    return Intl.message(
      'Пользователи',
      name: 'users',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
