import 'package:flutter/material.dart';
import 'package:news_sample/datasource/remotedatasource/endpoints.dart';
import 'package:news_sample/news_app.dart';

import 'datasource/remotedatasource/api_client.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await DbHelper.create();
  ApiClient.getInstance().init(Endpoints.baseurl, {});
  runApp(const NewsApp());
}
