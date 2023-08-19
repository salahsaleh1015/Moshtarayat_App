import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannersItem extends StatelessWidget {
  const BannersItem({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: MediaQuery.of(context).size.width*0.8,
      height: 100.h,
      decoration: BoxDecoration(
          image:  DecorationImage(
              image:CachedNetworkImageProvider(image),fit: BoxFit.fill
          ),
          borderRadius: BorderRadius.circular(25.r)
      ),

    );
  }
}
