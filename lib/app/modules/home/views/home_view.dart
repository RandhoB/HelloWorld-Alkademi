import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:helloworld_alkademi/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          'Hello Alkademi',
          style: appStyle.copyWith(),
        ),
        centerTitle: false,
        actions: [
          Icon(Icons.ac_unit),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.abc_rounded),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello',
              style: bodyJudulStyle.copyWith(),
            ),
            SizedBox(
              width: Get.width * 0.5,
            ),
            Text(
              'World',
              style: bodyIsiStyle.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}
