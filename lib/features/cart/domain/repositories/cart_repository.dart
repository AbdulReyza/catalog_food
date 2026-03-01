import 'package:catalog_food/features/cart/domain/entitities/product.dart';

abstract class CartRepository {
  List<Product> getCartItems();
  void addItem(Product product);
  void removeAll();
  bool isItemInCart(String productId);
}