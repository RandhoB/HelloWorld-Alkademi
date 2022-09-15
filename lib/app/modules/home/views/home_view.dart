import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:helloworld_alkademi/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: appColor,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black45,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Hello Alkademi',
          style: appStyle.copyWith(
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          Container(
              child: Icon(
            Icons.ac_unit,
            color: Colors.black45,
          )),
          SizedBox(
            width: 30,
          ),
          Container(
              child: Icon(
            Icons.abc_rounded,
            color: Colors.black45,
          )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/background.jpeg',
              fit: BoxFit.cover,
              height: Get.height,
              width: Get.width,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/landmark.svg'),
                Text(
                  'Hello',
                  style: bodyJudulStyle.copyWith(
                    fontSize: 40,
                    color: youngBlue,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'World',
                  style: bodyIsiStyle.copyWith(
                    fontSize: 60,
                    color: youngRed,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
