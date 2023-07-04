class ContactModel {
  final String name;
  final String number;
  final int id;

  ContactModel({required this.number, required this.name, required this.id});

  ContactModel copyWith(String? name, String? number, int? id) {
    return ContactModel(
        id: id ?? this.id,
        number: number ?? this.number,
        name: name ?? this.name);
  }

  String canAddThis() {
    if (name.isEmpty) return "Ism kiriting";
    if (number.isEmpty) return "Nomer kiriting";
    return "";
  }
}
