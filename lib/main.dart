import 'package:flutter/material.dart';
import 'package:news_sample/news_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await DbHelper.create();
  runApp(const NewsApp());
}
