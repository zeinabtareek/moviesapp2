import 'package:get/get.dart';


class HomeController extends GetxController  {
  final currentIndex =0.obs;
  RxInt currentIndex1 =0.obs;


  changeTabIndex(   index) {
    currentIndex.value=index;
    // update();
  }


}