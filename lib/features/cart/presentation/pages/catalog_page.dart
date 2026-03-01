import 'package:catalog_food/core/constants/app_constant.dart';
import 'package:catalog_food/core/routes/app_route.dart';
import 'package:catalog_food/features/cart/domain/entitities/product.dart';
import 'package:catalog_food/features/cart/presentation/widgets/add_button_widget.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(id: '1', name: 'Ayam Bakar Madu', price: '28000'),
      Product(id: '2', name: 'Sate Kambing', price: '35000'),
      Product(id: '3', name: 'Nasi Goreng Spesial', price: '22000'),
      Product(id: '4', name: 'Jus Alpukat', price: '15000'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstant.catalogTitle),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, AppRoute.cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            trailing: AddButtonWidget(product: products[index]),
          );
        },
      ),
    );
  }
}
