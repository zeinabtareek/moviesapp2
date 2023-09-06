import 'dart:async';

import 'package:get/get.dart';

import '../../home/home.dart';

class SplashController extends GetxController{
  @override
  void onInit() {

    Timer(Duration(seconds: 5), () {
      Get.offAll(Home());
    });



    super.onInit();

  }

}