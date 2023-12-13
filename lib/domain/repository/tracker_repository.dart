import 'package:elevator_tracker_app/models/house_model.dart';
import '../../data/dto/dto.dart';

abstract class TrackerRepository {
  Future<void> insertHouses(HouseModel houseModel);

  Future<List<HousesDTO>> getAllHouses();

  Future<HousesDTO?> getHouseById(int id);

  Future<void> updateCurrentLiftPosition(int id, int newCurrentLiftPosition);

  Future<void> deleteHouse(int id);
}
