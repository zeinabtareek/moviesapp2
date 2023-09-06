import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../componants/custom_bottomNav.dart';
import '../../consts/app_assets.dart';
import '../../consts/strings.dart';
import '../../consts/style.dart';
import '../../data.dart';
import '../../helper/connectivity.dart';
import 'controller/home_ controller.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

    final controller =Get.put(HomeController());
   final connection=Get.put(ConnectionStatusSingleton());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Text(Strings.home,
          style:TextStyle(
            fontWeight: FontWeight.bold,
            color: K.whiteColor,
            fontSize: 30.sp,
          )
        ),
      ) ,
      body: Obx(()=> connection.connectivity.value==0?
      Image.asset(AppAssets.imageConnection,color: K.primaryColor,)





          :   Column(
        children: [
          Text('hello')

        ],
      ),),
      bottomNavigationBar: Obx(()=>CustomBottomNavBar(
        list :bottomNavigationBarData,
        onTap:(v){
          controller.changeTabIndex(v);
          print(controller.currentIndex.value);
        },
        currentIndex:controller.currentIndex.value,
      ),)

    );
  }
}

// Container(
// width: 200.w,
// height: MediaQuery.of(context).size.height/2.h,
// // height: 200.h,
// // padding:  EdgeInsets.only(top:25.h,right: 55.w),
// // margin: EdgeInsets.symmetric(horizontal: 12.w,vertical:5.h ),
// // padding:  EdgeInsets.all(25.sp),
//
// )