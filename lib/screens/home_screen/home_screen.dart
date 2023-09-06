import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../componants/custom_card.dart';
import '../../consts/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/3.h,
         child:   ListView.builder(
              itemCount: 12,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return CustomMovieCard(context,url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH_tScjIsEVtJriHN44FEueFR4AbdobVxyE4ntPUSEIg&s' );

                })

          ),



        ],
      ),
    );
  }
}

