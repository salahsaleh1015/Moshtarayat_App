class ProductEntity {
  final int productId;
  final bool inFav, inCart;
  final String productImage, productDescription, productName;
  num productPrice, productOldPrice;
  ProductEntity(
      {required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.productId,
      required this.productDescription,
      required this.productOldPrice,
      required this.inCart,
      required this.inFav});
}
