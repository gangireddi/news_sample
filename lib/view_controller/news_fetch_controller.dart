import 'package:get/get.dart';

import 'package:news_sample/model/location.dart';
import 'package:news_sample/view_controller/base_controller.dart';

class NewsFetchController extends BaseController{

  late Rx<LocationModel> _location;

  NewsFetchController(LocationModel loc) {
    _location = Rx(loc);
  }

  LocationModel getLocaton() => _location.value;
  @override
  void onInit() {
    super.onInit();
    _getData();
  }

  _getData() async {
    change([], status: RxStatus.loading());
    localService.getDevicesForLocation(getLocaton().id).listen((event) async {
      var loc = await localService.getLocationById(getLocaton().id);
      if (loc != null) {
        _location.value = loc;
      }
      change(event, status: RxStatus.success());
    });
  }
}