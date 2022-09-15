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
        title: Text(
          'Hello Alkademi',
          style: appStyle.copyWith(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Hello',
              style: bodyJudulStyle.copyWith(),
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
