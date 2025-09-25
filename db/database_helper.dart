import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/farmer.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('growkrushak.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE farmers (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      phone TEXT NOT NULL,
      panchayat TEXT NOT NULL
    )
    ''');
  }

  Future<int> insertFarmer(Farmer farmer) async {
    final db = await instance.database;
    return await db.insert('farmers', farmer.toMap());
  }

  Future<Farmer?> getFarmer() async {
    final db = await instance.database;
    final result = await db.query('farmers', limit: 1);
    if (result.isNotEmpty) {
      return Farmer.fromMap(result.first);
    }
    return null;
  }
}
