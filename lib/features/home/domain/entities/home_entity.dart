class HomeEntity {
  final int productId, bannerId;
  final bool inFav, inCart;
  final String bannerImage,
      productImage,
      productDescription,
      productName,
      productPrice,
      productOldPrice;

  HomeEntity(
      {required this.bannerImage,
      required this.bannerId,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.productId,
      required this.productDescription,
      required this.productOldPrice,
      required this.inCart,
      required this.inFav});
}
