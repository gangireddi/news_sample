import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:news_sample/initial_bindings.dart';
import 'package:news_sample/view/screens/landing_screen.dart';

import 'constants/app_colors.dart';
import 'constants/app_strings.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<StatefulWidget> createState() => _NewsAppState();
}

class _NewsAppState extends State {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // DbHelper.getInstance().closeDB();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.pink,
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.dark,));
    return GetMaterialApp(
        initialBinding: InitialBindings(),
        theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: AppColors.white,
          primaryColor: AppColors.white,
        ),
        translations: AppStrings(),
        locale:  const Locale("en", "US") ,
        fallbackLocale: const Locale("en", "US"),
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/', page:() => LandingScreen())
        ]
    );
  }
}