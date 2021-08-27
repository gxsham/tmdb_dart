class Genre {
  late final int id;
  late final String name;

  Genre.fromJson(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"] ?? '';
  }

  static List<Genre> listFromJson(List<dynamic> list) =>
      list.map((x) => Genre.fromJson(x)).toList(growable: false);
}
