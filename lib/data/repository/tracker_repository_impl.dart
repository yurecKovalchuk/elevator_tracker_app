import 'package:elevator_tracker_app/data/data.dart';
import 'package:elevator_tracker_app/models/house_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@Injectable(as: TrackerRepository)
class TrackerRepositoryImpl implements TrackerRepository {
  TrackerRepositoryImpl(
    this._dataSourceSQLite,
  );

  final SQLiteDataSource _dataSourceSQLite;

  @override
  Future<void> insertHouses(HouseModel houseModel) async {
    _dataSourceSQLite.insertHouse(houseModel);
  }

  @override
  Future<List<HousesDTO>> getAllHouses() async {
    final response = await _dataSourceSQLite.getAllHouses();
    return response;
  }

  @override
  Future<void> updateCurrentLiftPosition(int id, int newCurrentLiftPosition) async {
    _dataSourceSQLite.updateCurrentLiftPosition(id, newCurrentLiftPosition);
  }

  @override
  Future<void> deleteHouse(int id) async {
    _dataSourceSQLite.deleteHouse(id);
  }
}
