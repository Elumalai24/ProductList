class ProductsModel {
  int? id;
  String? title;
  String? image;
  String? price;
  String? details;

  ProductsModel({
    this.id,
    this.title,
    this.image,
    this.price,
    this.details,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      price: json["price"],
      details: json["details"],
    );
  }
}
