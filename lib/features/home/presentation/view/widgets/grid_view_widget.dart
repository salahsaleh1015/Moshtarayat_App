import 'package:flutter/material.dart';

import '../../../domain/entities/product_entity.dart';
import 'grid_view_item.dart';

class GridViewWidget extends StatelessWidget {
   GridViewWidget({super.key,required this.products});
List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
// Replace with the actual count of items
      itemBuilder: (BuildContext context, int index) {
        return  GridViewItem(
          name: products[index].productName,
          price:products[index].productPrice,
          image: products[index].productImage,
        );
      },
    );
  }
}
