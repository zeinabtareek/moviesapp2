

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../consts/style.dart';

Widget CustomMovieCard(context,{url}){
  return Container(
    width:  MediaQuery.of(context).size.width/3.w,

    decoration: BoxDecoration(
      // color: K.w,
        border: Border.all(color: K.primaryColor)

    ),
    child:  OctoImage(
      image: CachedNetworkImageProvider(
          'image'
      ),
      placeholderBuilder: OctoPlaceholder.blurHash(
          'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
          fit: BoxFit.cover),
      errorBuilder: (context, url, error) {
        return  Icon(Icons.error);
      },
      fit: BoxFit.cover,
    ),


  );
}
