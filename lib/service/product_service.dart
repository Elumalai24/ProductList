import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;

import '../model/products.dart';

class ProductService {
  Future<List<ProductsModel>> getProductsFromJson() async {
    final jsonList =
        await rootBundle.rootBundle.loadString('jsonfile/product.json');
    final products = json.decode(jsonList) as List<dynamic>;

    return products.map((e) => ProductsModel.fromJson(e)).toList();
  }
}
