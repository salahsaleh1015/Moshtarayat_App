import 'package:flutter/material.dart';
import 'package:moshtarayat_app/features/home/presentation/view/widgets/banners_item.dart';

import '../../../domain/entities/banner_entity.dart';

class BannersListView extends StatelessWidget {
   BannersListView({super.key, required this.banners});
 List<BannerEntity> banners;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
     separatorBuilder: (context, index){
        return const SizedBox(
          width: 5,
        );
     },
      itemBuilder:(context, index){
        return BannersItem(image: banners[index].bannerImage,);
      } ,
      itemCount: 5,
    );
  }
}
