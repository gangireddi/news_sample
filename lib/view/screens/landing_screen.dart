import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_sample/utils/navigation_util.dart';
import 'package:news_sample/view/screens/locations_list.dart';
import 'package:video_player/video_player.dart';

class LandingScreen extends StatefulWidget{
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  late VideoPlayerController controller;
  bool isGestureEnabled = false;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.asset('assets/videos/landingscreen.MP4');
    controller.initialize();
    controller.play();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      NavigationUtil.navigateTo(const LocationsList());
    });
    return  GestureDetector(
      onTap: () {
        NavigationUtil.navigateTo(const LocationsList());
      },
        child: VideoPlayer(controller));
  }
}
