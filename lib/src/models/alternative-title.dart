class AlternativeTitle {
  /// [iso3166_1](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code
  final String? iso3166_1;
  final String? title;
  final String? type;

  AlternativeTitle.fromJson(Map<String, dynamic> map)
      : iso3166_1 = map["iso_3166_1"],
        title = map["title"],
        type = map["type"];

  static List<AlternativeTitle> listFromJson(List<dynamic> list) =>
      list.map((x) => AlternativeTitle.fromJson(x)).toList(growable: false);
}
