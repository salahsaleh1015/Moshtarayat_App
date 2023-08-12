// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<ProductEntity> {
  @override
  final int typeId = 0;

  @override
  ProductEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductEntity(
      productImage: fields[3] as String,
      productName: fields[5] as String,
      productPrice: fields[6] as num,
      productId: fields[0] as int,
      productDescription: fields[4] as String,
      productOldPrice: fields[7] as num,
      inCart: fields[1] as bool,
      inFav: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ProductEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.inCart)
      ..writeByte(2)
      ..write(obj.inFav)
      ..writeByte(3)
      ..write(obj.productImage)
      ..writeByte(4)
      ..write(obj.productDescription)
      ..writeByte(5)
      ..write(obj.productName)
      ..writeByte(6)
      ..write(obj.productPrice)
      ..writeByte(7)
      ..write(obj.productOldPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
