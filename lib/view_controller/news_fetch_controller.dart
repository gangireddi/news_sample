import 'dart:developer';

import 'package:get/get.dart';

import 'package:news_sample/model/location.dart';
import 'package:news_sample/model/newsmodel.dart';
import 'package:news_sample/view_controller/base_controller.dart';

class NewsFetchController extends BaseController with StateMixin<List<NewsModel>>{

  @override
  void onInit() {
    super.onInit();
    _getData();
  }

  _getData() async {
    change([], status: RxStatus.loading());
    var news = remoteService.fetchNewsList();
    debugger();
    change(news as List<NewsModel>?, status: RxStatus.success());
  }
}