import 'package:new_project_defoult_2/models/contact_model_for_sql/contact_model_for_sql.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabase {
  static final LocalDatabase getInstance = LocalDatabase._init();

  LocalDatabase._init();

  factory LocalDatabase() {
    return getInstance;
  }

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await _initDB("contacts.db");
      return _database!;
    }
  }

  Future<Database> _initDB(String dbName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
    const textType = "TEXT NOT NULL";

    await db.execute('''
    CREATE TABLE ${ContactModelFields.contactTable} (
    ${ContactModelFields.id} $idType,
    ${ContactModelFields.name} $textType,
    ${ContactModelFields.number} $textType,
    )
    ''');
  }

  static Future<ContactModelSql> insertTodo(
      ContactModelSql contactModelSql) async {
    final db = await getInstance.database;
    final int id = await db.insert(
        ContactModelFields.contactTable, contactModelSql.toJson());
    return contactModelSql.copyWith(id: id);
  }

  static Future<List<ContactModelSql>> getAllContacts() async {
    List<ContactModelSql> allContacts = [];
    final db = await getInstance.database;
    allContacts = (await db.query(ContactModelFields.contactTable))
        .map((e) => ContactModelSql.fromJson(e))
        .toList();

    return allContacts;
  }

  static updateContacts({required ContactModelSql contactModelSql}) async {
    final db = await getInstance.database;
    db.update(
      ContactModelFields.contactTable,
      contactModelSql.toJson(),
      where: "${ContactModelFields.id} = ?",
      whereArgs: [contactModelSql.id],
    );
  }

  static deleteContact(int id) async {
    final db = await getInstance.database;
    db.delete(
      ContactModelFields.contactTable,
      where: "${ContactModelFields.id} = ?",
      whereArgs: [id],
    );
  }
}