import 'package:get/get.dart';
import 'package:home/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

class NavbarController extends GetxController {
  var currentIndex = 0.obs;

  final List<Widget> pages = [
    const HomeView(),
    const Center(child: Text("Chat")),
    const Center(child: Text("Check In")),
    const Center(child: Text("Profile")),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
