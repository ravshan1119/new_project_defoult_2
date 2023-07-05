class ContactModelFields {
  static const String id = "_id";
  static const String name = "name";
  static const String number = "number";

  static const String contactTable = "contacts";
}

class ContactModelSql {
  int? id;
  late final String name;
  late final String number;

  ContactModelSql({
    this.id,
    required this.name,
    required this.number,
  });

  ContactModelSql copyWith({
    String? name,
    String? number,
    int? id,
  }) {
    return ContactModelSql(
        name: name ?? this.name,
        number: number ?? this.number,
        id: id ?? this.id);
  }

  factory ContactModelSql.fromJson(Map<String, dynamic> json) {
    return ContactModelSql(
        name: json[ContactModelFields.name],
        number: json[ContactModelFields.number],
        id: json[ContactModelFields.id] ?? 0);
  }

  Map<String, dynamic> toJson() {
    return {
      ContactModelFields.name: name,
      ContactModelFields.number: number,
      ContactModelFields.id: id,
    };
  }

  @override
  String toString() {
    return '''
      name: $name,
      number: $number,
      id: $id, 
    ''';
  }
}
