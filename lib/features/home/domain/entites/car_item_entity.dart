import 'package:equatable/equatable.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';

// ignore: must_be_immutable
class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int quanitty;

  CartItemEntity({required this.productEntity, this.quanitty = 0});

  num calculateTotalPrice() {
    return productEntity.price * quanitty;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * quanitty;
  }

  void increasQuantity() {
    quanitty++;
  }

  void decreasQuantity() {
    quanitty--;
  }

  @override
  List<Object?> get props => [productEntity];
}
