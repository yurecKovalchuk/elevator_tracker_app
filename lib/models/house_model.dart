class HouseModel {
  HouseModel({
    required this.houseName,
    required this.floors,
  });

  final String houseName;
  final int floors;

  Map<String, dynamic> toJson() {
    return {
      'houseName': houseName,
      'floors': floors,
    };
  }
}
