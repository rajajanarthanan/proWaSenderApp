class Strings {
  static String get appTitle => "Simples";
  static String get appHelpText =>
      'Simples Technologies is a leading cutting edge technology application developer';
  static String get appVersion => '1.0.0';

  static List<String> get props => [appTitle, appHelpText, appVersion];
}

const appLocales = ['es', 'en'];

const appDefaultLocale = 'en';

class SimplesGenerateLocale {
  String locale;
  String directoryName;
  late Map<String, dynamic> data;
  List<String> strings;

  SimplesGenerateLocale(
      {required this.locale,
      required this.directoryName,
      required this.strings}) {
    data = {"strings": strings};
  }

  static fromJson(Map<String, dynamic> json) {
    Map<String, String> translated = {};
    json.forEach((key, value) {
      translated[key] = value;
    });
    return translated;
  }

  Map<String, dynamic> toJson() =>
      {"locale": locale, "directoryName": directoryName, "data": data};
}
