import 'package:get/get.dart';
import 'package:news_sample/datasource/localdatasource/local_service.dart';
import 'package:news_sample/datasource/remotedatasource/remote_service.dart';

abstract class BaseController extends GetxController {
  RemoteService remoteService = Get.find<RemoteService>();

}