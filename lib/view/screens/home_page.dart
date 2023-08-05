import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_sample/view_controller/news_fetch_controller.dart';
class HomePage extends StatefulWidget {
  HomePage({super.key}) {
    Get.put(NewsFetchController());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    NewsFetchController controller = Get.find<NewsFetchController>();
    return Obx(() {
        return Container(height: 100,width: 100,color: Colors.red,);
      }
    );
  }
}


