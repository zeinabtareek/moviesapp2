import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moviesapp2/screens/home/home.dart';
import 'package:moviesapp2/screens/splash_screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) { //455 , 890
    return ScreenUtilInit( //responsive
      designSize: Size(460,848),//x,y
      builder: (BuildContext context, Widget ? widget){
        // SystemChrome.setPreferredOrientations([
        //   DeviceOrientation.portraitUp,
        //   DeviceOrientation.portraitDown,
        // ]);

        return GetMaterialApp(
         home: SplashScreen(),
         // home: Home(),
        );
      },

    );
  }
}
