import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_sample/model/location.dart';
import 'package:news_sample/view/widgets/base_stateless_widget.dart';
import 'package:news_sample/view_controller/news_fetch_controller.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key}) {
    Get.put(NewsFetchController());
  };

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomePage1 extends BaseStatelessWidget {
  HomePage1({required LocationModel location, Key? key}) : super(key: key) {
    Get.lazyPut(() => NewsFetchController(location));
  }

  @override
  Widget build(BuildContext context) {


    var controller = Get.find<NewsFetchController>();

    return  controller.obx() {
      const Placeholder();
    }
  }
}



