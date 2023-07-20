import 'package:flutter/material.dart';

import '../model/products.dart';
import '../service/product_service.dart';

class HomeScreenViewModel extends ChangeNotifier {
  final ProductService _productService = ProductService();
  List<ProductsModel> _products = [];
  List<ProductsModel> get products => _products;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  HomeScreenViewModel() {
    // Call fetchProducts when the view model is created
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      _isLoading = true;
      notifyListeners();

      _products = await _productService.getProductsFromJson();

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
    }
  }
}
