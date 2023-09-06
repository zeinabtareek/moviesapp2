import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviesapp2/screens/splash_screen/controller/splash_controller.dart';

import '../../consts/style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SplashController());
    return Scaffold(
      backgroundColor: K.blackColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(size: 200,),
            K.sizedBoxH,


                LinearProgressIndicator(
                  minHeight: 2,
                  color: K.primaryColor,
                  backgroundColor: K.primaryColor.withOpacity(.5),
                ),



          ],
        ),
      ),

    );
  }
}
