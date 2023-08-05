import 'package:get/get.dart';
import 'package:news_sample/datasource/localdatasource/local_service.dart';

import 'datasource/remotedatasource/api_client.dart';
import 'datasource/remotedatasource/remote_service.dart';
// import 'package:kidde_flutter/datasource/local_datasource/local_service.dart';
// import 'package:kidde_flutter/datasource/remote_datasource/api_client.dart';
// import 'package:kidde_flutter/datasource/remote_datasource/remote_service.dart';

class InitialBindings extends Bindings {

  @override
  void dependencies() {
    var localService = LocalService();
    // Get.lazyPut(() => localService);
    Get.lazyPut(() => RemoteService(ApiClient.getInstance(), localService));
  }

}