// Generated by package:messages_builder.

// ignore_for_file: library_prefixes, non_constant_identifier_names
// ignore_for_file: unused_import

import 'package:intl/intl.dart';
import 'package:messages/messages_json.dart';

import 'AboutPage_en_empty.g.dart' deferred as AboutPage_en_empty;
import 'AboutPage_fr_empty.g.dart' deferred as AboutPage_fr_empty;

class AboutPageMessages {
  AboutPageMessages(this._assetLoader);

  final Future<String> Function(String id) _assetLoader;

  String _currentLocale = 'en';

  final Map<String, MessageList> _messages = {};

  static const _dataFiles = {
    'en': ('packages/example/assets/testarbctx2.arb.json', 'QrwRSsOy'),
    'fr': ('packages/example/assets/testarbctx2_fr.arb.json', '390XWry3')
  };

  String get currentLocale => _currentLocale;

  MessageList get _currentMessages => _messages[currentLocale]!;

  String getById(
    String id, [
    List<dynamic> args = const [],
  ]) {
    return _currentMessages.generateStringAtId(id, args);
  }

  static Iterable<String> get knownLocales => _dataFiles.keys;

  Future<void> loadLocale(String locale) async {
    if (!_messages.containsKey(locale)) {
      final info = _dataFiles[locale];
      final dataFile = info?.$1;
      if (dataFile == null) {
        throw ArgumentError('Locale $locale is not in $knownLocales');
      }
      if (locale == 'en') {
        await AboutPage_en_empty.loadLibrary();
      } else if (locale == 'fr') {
        await AboutPage_fr_empty.loadLibrary();
      }

      final data = await _assetLoader(dataFile);
      final messageList = MessageListJson.fromString(data, _pluralSelector);
      if (messageList.preamble.hash != info?.$2) {
        throw ArgumentError('''
              Messages file for locale $locale has different hash "${messageList.preamble.hash}" than generated code "${info?.$2}".''');
      }
      _messages[locale] = messageList;
    }
    _currentLocale = locale;
  }

  Future<void> loadAllLocales() async {
    for (final locale in knownLocales) {
      await loadLocale(locale);
    }
  }

  String aboutMessage(String websitename) =>
      _currentMessages.generateStringAtIndex(0, [websitename]);

  String helloAndWelcome(
    String firstName,
    int lastName,
  ) =>
      _currentMessages.generateStringAtIndex(1, [firstName, lastName]);

  String newMessages(int newMessages) =>
      _currentMessages.generateStringAtIndex(2, [newMessages]);

  String newMessages2(
    String gender,
    int newVar,
  ) =>
      _currentMessages.generateStringAtIndex(3, [gender, newVar]);

  String get otherMsg => _currentMessages.generateStringAtIndex(4, []);
}

Message _pluralSelector(
  num howMany,
  String locale, {
  required Message other,
  Message? few,
  Message? many,
  Map<int, Message>? numberCases,
  Map<int, Message>? wordCases,
}) {
  return Intl.pluralLogic(
    howMany,
    few: few,
    many: many,
    zero: numberCases?[0] ?? wordCases?[0],
    one: numberCases?[1] ?? wordCases?[1],
    two: numberCases?[2] ?? wordCases?[2],
    other: other,
    locale: locale,
  );
}
