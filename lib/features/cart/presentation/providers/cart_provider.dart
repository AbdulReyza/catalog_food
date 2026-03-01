import 'package:catalog_food/features/cart/domain/entitities/product.dart';
import 'package:catalog_food/features/cart/domain/repositories/cart_repository.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final CartRepository _repository;

  CartProvider({required CartRepository repository}) : _repository = repository;

  List<Product> get items => _repository.getCartItems();

  void addItem(Product product) {
    _repository.addItem(product);
    notifyListeners();
  }

  void removeAll(){
    _repository.removeAll();
    notifyListeners();
  }

  bool isItemInCart(String productId) => _repository.isItemInCart(productId);
}