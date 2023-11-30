import 'package:sqflite/sqflite.dart';

import '../data.dart';

class HousesDatabaseHelper {
  static const String tableName = 'houses';
  static const String columnId = 'id';
  static const String columnHouseName = 'houseName';
  static const String columnFloors = 'floors';
  static const String columnCurrentLiftPosition = 'currentLiftPosition';

  static Future<Database> open() async {
    return openDatabase(
      'houses_database.db',
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $tableName (
            $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
            $columnHouseName TEXT,
            $columnFloors INTEGER,
            $columnCurrentLiftPosition INTEGER
          )
        ''');
      },
      version: 1,
    );
  }

  static Future<void> insert(HousesDTO housesDTO) async {
    final Database db = await open();
    await db.insert(
      tableName,
      housesDTO.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<HousesDTO>> getAllHouses() async {
    final Database db = await open();
    final List<Map<String, dynamic>> maps = await db.query(tableName);
    return List.generate(maps.length, (i) {
      return HousesDTO.fromJson(maps[i]);
    });
  }

  static Future<void> updateCurrentLiftPosition(int id, int newCurrentLiftPosition) async {
    final Database db = await open();
    await db.update(
      tableName,
      {columnCurrentLiftPosition: newCurrentLiftPosition},
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }

  static Future<void> deleteHouse(int id) async {
    final Database db = await open();
    await db.delete(
      tableName,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
}
