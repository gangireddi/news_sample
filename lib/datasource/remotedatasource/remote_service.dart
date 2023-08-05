import 'dart:async';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:news_sample/datasource/localdatasource/local_service.dart';
import 'package:news_sample/datasource/remotedatasource/api_client.dart';
import 'package:news_sample/datasource/remotedatasource/endpoints.dart';
import 'package:news_sample/model/location.dart';
import 'package:news_sample/model/newsmodel.dart';


class RemoteService extends GetxService {
  final String tag = "RemoteService";
  final ApiClient client;
  final LocalService localService;

  RemoteService(this.client, this.localService);

  Future<List<LocationModel>?> fetchLocationsList() async {
    var response = await client.get(Endpoints.getLocations);
    if (response.isSuccess() && response.data is List) {
      List<LocationModel> locations = List<LocationModel>.from(response.data.map((json) => LocationModel.fromJson(json)));
      return locations;
    }
    return null;
  }

  Future<List<NewsModel>> fetchNewsList() async {
    var response = await client.get(Endpoints.getNews);
    if (response.isSuccess() && response.data is List) {
      List<NewsModel> news = List<NewsModel>.from(response.data.map((json) => NewsModel.fromJson(json)));
      return news;
    }
    return [];
  }

}
