import 'package:elevator_tracker_app/models/house_model.dart';
import 'package:injectable/injectable.dart';

import 'package:sqflite/sqflite.dart';

import '../data.dart';

class Tables {
  static const String housesTableName = 'houses';
  static const String housesColumnId = 'id';
  static const String housesColumnHouseName = 'houseName';
  static const String housesColumnFloors = 'floors';

  static const String liftPositionTableName = 'lift_positions';
  static const String liftPositionColumnId = 'id';
  static const String liftPositionColumnHouseId = 'houseId';
  static const String liftPositionColumnCurrentLiftPosition = 'currentLiftPosition';
}

@injectable
class SQLiteDataSource {
  Future<Database> open() async {
    return openDatabase(
      'houses_database.db',
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE ${Tables.housesTableName} (
            ${Tables.housesColumnId} INTEGER PRIMARY KEY AUTOINCREMENT,
            ${Tables.housesColumnHouseName} TEXT,
            ${Tables.housesColumnFloors} INTEGER
          )
        ''');

        await db.execute('''
          CREATE TABLE ${Tables.liftPositionTableName} (
            ${Tables.liftPositionColumnId} INTEGER PRIMARY KEY AUTOINCREMENT,
            ${Tables.liftPositionColumnHouseId} INTEGER,
            ${Tables.liftPositionColumnCurrentLiftPosition} INTEGER,
            FOREIGN KEY (${Tables.liftPositionColumnHouseId}) REFERENCES ${Tables.housesTableName} (${Tables.housesColumnId})
          )
        ''');
      },
      version: 1,
    );
  }

  Future<void> insertHouse(HouseModel houseModel, {int currentLiftPosition = 1}) async {
    final Database db = await open();

    await db.transaction((txn) async {
      int houseId = await txn.insert(
        Tables.housesTableName,
        houseModel.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

      await txn.insert(
        Tables.liftPositionTableName,
        {
          Tables.liftPositionColumnHouseId: houseId,
          Tables.liftPositionColumnCurrentLiftPosition: currentLiftPosition,
        },
      );
    });
  }

  Future<List<HousesDTO>> getAllHouses() async {
    final Database db = await open();
    final List<Map<String, dynamic>> maps = await db.query(Tables.housesTableName);
    return List.generate(maps.length, (i) {
      return HousesDTO.fromJson(maps[i]);
    });
  }

  Future<HousesDTO?> getHouseById(int id) async {
    final Database db = await open();
    final List<Map<String, dynamic>> maps = await db.rawQuery('''
    SELECT ${Tables.housesTableName}.*, ${Tables.liftPositionColumnCurrentLiftPosition}
    FROM ${Tables.housesTableName}
    LEFT JOIN ${Tables.liftPositionTableName}
    ON ${Tables.housesTableName}.${Tables.housesColumnId} = ${Tables.liftPositionTableName}.${Tables.liftPositionColumnHouseId}
    WHERE ${Tables.housesTableName}.${Tables.housesColumnId} = ?
  ''', [id]);

    if (maps.isNotEmpty) {
      return HousesDTO.fromJson(maps.first);
    } else {
      return null;
    }
  }

  Future<void> updateCurrentLiftPosition(int houseId, int newCurrentLiftPosition) async {
    final Database db = await open();
    await db.update(
      Tables.liftPositionTableName,
      {Tables.liftPositionColumnCurrentLiftPosition: newCurrentLiftPosition},
      where: '${Tables.liftPositionColumnHouseId} = ?',
      whereArgs: [houseId],
    );
  }

  Future<void> deleteHouse(int houseId) async {
    final Database db = await open();
    await db.delete(
      Tables.housesTableName,
      where: '${Tables.housesColumnId} = ?',
      whereArgs: [houseId],
    );

    await db.delete(
      Tables.liftPositionTableName,
      where: '${Tables.liftPositionColumnHouseId} = ?',
      whereArgs: [houseId],
    );
  }
}
