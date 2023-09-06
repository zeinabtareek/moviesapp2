import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componants/custom_card.dart';
import '../../consts/style.dart';

class AllMoviesScreen extends StatelessWidget {
  const AllMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('All movies',
            style:TextStyle(
              fontWeight: FontWeight.bold,
              color: K.whiteColor,
              fontSize: 30.sp,
            )
        ),
      ) ,
      body: Container(
        color: K.blackColor,
        child: GridView.builder(
          shrinkWrap: true,
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,//item count per Row
              childAspectRatio:.6,//height
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),



            itemCount: 10,
            itemBuilder: (context , index ){
              return CustomMovieCard(context,url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH_tScjIsEVtJriHN44FEueFR4AbdobVxyE4ntPUSEIg&s' );


            }),
      )



    );
  }
}
