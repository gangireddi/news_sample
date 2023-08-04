import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationUtil {

  static Future<dynamic>? navigateTo(Widget widget) {
    return Get.to(widget);
  }

  static Future<dynamic>? navigateToWithReplace(Widget widget) {
    return Get.off(widget);
  }

  static Future<dynamic>? navigateToReplaceAll(Widget widget) {
    return Get.offUntil(GetPageRoute(page: () => widget), (route)=> false);
  }

  static Future<dynamic>? clearAllTillDashboard() {
    return Get.offNamedUntil("/", (route)=> route.settings.name == "/");
  }

}