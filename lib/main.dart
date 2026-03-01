import 'package:catalog_food/core/constants/app_constant.dart';
import 'package:catalog_food/core/routes/app_route.dart';
import 'package:catalog_food/injection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(buildApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoute.catalog,
      routes: AppRoute.routes,
      debugShowCheckedModeBanner: false,
      title: AppConstant.defTitle,
    );
  }
}