class ProductsModel {
  final String id;
  final String title;
  final String image;
  final String price;
  final String details;
  ProductsModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.details,
  });
  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
        id: json["id"] ?? "",
        title: json["title"] ?? "",
        image: json["image"] ?? "",
        price: json["price"] ?? "",
        details: json["details"] ?? "");
  }
}
