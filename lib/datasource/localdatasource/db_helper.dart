import 'dart:io';

import 'package:objectbox/objectbox.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class DbHelper {
  static late final DbHelper _instance;

  static DbHelper getInstance() => _instance;

  /// The Store of this app.
  late final Store store;

  DbHelper._create(this.store) {
    // Add any additional setup code, e.g. build queries.
  }

  static Future<String> _getDbDirectory() async {
    final docsDir = await getApplicationDocumentsDirectory();
    return p.join(docsDir.path, "kidde-app");
  }
  /// Create an instance of ObjectBox to use throughout the app.
  /*static Future<void> create() async {

    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
    final store = await openStore(directory: await _getDbDirectory());
    _instance = DbHelper._create(store);
  }*/

 /* Future<void> saveLocations(List<Location> locations) async {
    await store.runInTransactionAsync(TxMode.write, (store, parameter) {
      var items = store.box<Location>().getAll();
      List<int> newIds = locations.map((e) => e.id).toList();
      List<int> itemsToRemove = [];
      for (var item in items) {
        if (!newIds.contains(item.id)) {
          itemsToRemove.add(item.id);
        }
      }
      store.box<Location>().removeMany(itemsToRemove);
      store.box<Location>().putMany(locations);

    }, null);
  }



  bool hasLocationData() {
    return store.box<Location>().count() != 0;
  }

  Stream<List<Location>> getAllLocations({bool triggerImmediately = false}) {
    return store.box<Location>().query().watch(triggerImmediately: triggerImmediately).map((event) => event.find());
  }

  Future<Location?> getLocationById(int locId) async {
    return await store.box<Location>().getAsync(locId);
  }

  Future<List<Device>> getDeviceListForLocation(int locId) async {
    return await store.box<Device>().query(Device_.locationId.equals(locId)).build().findAsync();
  }

  Stream<List<Device>> getDevicesForLocation(int locId) {
    return store.box<Device>().query(Device_.locationId.equals(locId)).watch(triggerImmediately: true).map((event) => event.find());
  }

  Stream<Device?> getDeviceById(int deviceId) {
    return store.box<Device>().query(Device_.id.equals(deviceId)).watch(triggerImmediately: true).map((event) => event.findFirst());
  }

  Future<Member?> getMemberForLocation(int id) async {
    return store.box<Member>().getAsync(id);
  }

  Future<bool> deleteDevice(dynamic id) async {
    return store.box<Device>().removeAsync(id);
  }*/

  closeDB() {
    store.close();
  }

  clearAllData() async {
    closeDB();
    var dir = await _getDbDirectory();
    File(dir).deleteSync(recursive: true);
  }
}