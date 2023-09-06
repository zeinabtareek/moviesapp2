

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class CustomBottomNavBar extends StatelessWidget {
    CustomBottomNavBar({
      required this.currentIndex,
    required  this.onTap,
    required  this.list,
    super.key,
  });
final List list;
 int currentIndex;
  void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: K.blackColor,
        elevation: 0,
        unselectedIconTheme: IconThemeData(color: K.mainColor),
        selectedIconTheme: IconThemeData(color: K.whiteColor),
        currentIndex: currentIndex,
        fixedColor: K.primaryColor,
        onTap: onTap,
        items:[
          for(int i =0;i<list.length;i++)
            BottomNavigationBarItem(
              icon: Icon(list[i]['icon']),
              label: list[i]['label'],
              activeIcon:  Icon(list[i]['active'],color: K.primaryColor,),
            ),
        ]
    );
  }
}
