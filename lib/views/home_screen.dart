import 'package:flutter/material.dart';
import 'package:product_list/views/product_details_screen.dart';
import 'package:provider/provider.dart';

import '../viewmodel/product_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeScreenViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : viewModel.products.isEmpty
              ? const Center(child: Text('No products found'))
              : ListView.builder(
                  itemCount: viewModel.products.length,
                  itemBuilder: (context, index) {
                    final product = viewModel.products[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailsScreen(product: product),
                          ),
                        ); // Handle tap on product item
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            width: 120,
                            height: 150,
                            child: Image(
                              image: NetworkImage(product.image.toString()),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, bottom: 8),
                                child: Text(
                                  product.title.toString(),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(product.price.toString()),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
    );
  }
}
