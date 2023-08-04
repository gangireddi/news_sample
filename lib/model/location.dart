import 'dart:convert';

class LocationModel  {
  final int locationId;
  final String locName;
  bool isSelected;


  LocationModel({required this.locationId,
      required this.locName,
      required this.isSelected}
      );

  factory LocationModel.fromJson(Map<String, dynamic> jsonData) {
    return LocationModel(
      locationId: jsonData['locationId'],
      locName: jsonData['locName'],
      isSelected: false,
    );
  }

  static Map<String, dynamic> toMap(LocationModel locationModel) => {
    'locationId': locationModel.locationId,
    'locName': locationModel.locName
  };
  static String encode(List<LocationModel> locations) => json.encode(
    locations
        .map<Map<String, dynamic>>((location) => LocationModel.toMap(location))
        .toList(),
  );

  static List<LocationModel> decode(String locations) =>
      (json.decode(locations) as List<dynamic>)
          .map<LocationModel>((item) => LocationModel.fromJson(item))
          .toList();
}